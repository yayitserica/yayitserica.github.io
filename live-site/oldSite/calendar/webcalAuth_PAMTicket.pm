#==============================================================================
#
#            webcal --- a web based calendar program
#
#          Copyright (C) 2000, 2001, 2002  Maorong Zou
#
#
#  This file is part of webcal.
#
#  webcal is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# webcal is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with webcal; see the file COPYING.  If not, write to
# the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
#
#
# $Header: /home/cvs/webCal/webCal2/webcalAuth_PAMTicket.pm,v 1.1 2003/06/27 20:29:02 mzou Exp $
#

package webcalAuth;
#==============================================================================
#use webcalLock;
#use Fcntl ':flock';
#use Fcntl ':DEFAULT';
#use Symbol;
use strict;
use Authen::PAM;
use Digest::MD5 qw(md5_hex);
#use POSIX;
#==================================================================================
# This module contains authentication related functions used in webcal. 
#
# To use an external authentication scheme, you need to re-implement all
# functions in this module. See Webcal_UNIX_Auth.pm for a working example.
#
#==================================================================================
# The  following diagram depicts webcal's authentication model. This assumes that
# http cookie auth method is selected.
#
#
#  Start---+
#          |
#          V
# +------------------------+
# |  read-crypted-password |
# |      from cookie       |
# +------------------------+
#           |    
#           V                No
# <F: VerifyCryptedPassword> ---+
#           |                   |
#           |                   |     |----------<<---------+
#           |               +---V-----V-----+               | No
#           | Yes           | Initial_Login |               |           Yes
#           |               |  username     | --> <F: VerifyPlainPassword>---+
#           V               |  password     |                                |     
#     /'''''''''''\         +---------------+                                | Yes
#    (Authenticated)                                                         V
#     \,,,,,,,,,,,/                                          <F: CryptPlainPassword> 
#           ^                                                                |
#           |                                      [Save-crypted-password-in-cookie] 
#           |                                                                |
#           +----------------<<----------------------------------------------+
#
#
#==================================================================================
# most functions in this file returns (status, message).
# status=0  on Failure, message returns the details about the failure.
# status=1  on Success, message is ignored by the caller.
#==================================================================================
sub AuthenticateNewUser { 
    # This routine is called just before creating a new calendar. You can use it
    # together with an external authentication module to grant calendar creation
    # to only local users.
    my ($user, $password)=(@_);
    # Args:
    #      $user         supplied username
    #      $password     supplied PLAIN (not crypted) password.
    #
    return (1, "");
}
#==================================================================================
my ($log, $logit, $x);
BEGIN {
    open($log, ">>/tmp/wcal.log");
    my $oldfh = select($log); $| = 1; select($oldfh);
    $logit = 0;
    $x = 0;
}
END {
    close($log);
}

sub logit {
    print $log ' ' x $x, @_, "\n" if $logit;
}

sub enterit {
    $x += 2;
    logit(@_);
}

sub leaveit {
    logit('=> ', @_);
    $x -= 2;
}

sub showenv {
    for my $k (sort keys %ENV) {
	logit("ENV[$k]=$ENV{$k}");
    }
}

sub remote_ip {
    enterit('remote_ip');
    showenv();
    if (my $header = $ENV{'HTTP_X_FORWARDED_FOR'}) {
	# This is a proxied connection.  Get the last IP from the header.
	if (my $ip = (split /,\s*/, $header)[-1]) {
	    leaveit("$ip # do HTTP_X_FORWARDED_FOR");
	    return $ip;
	}
    }
    my $ip = $ENV{'REMOTE_ADDR'} || undef;
    leaveit("$ip # do REMOTE_ADDR");
    return $ip;
}

my $expires = 24 * 60 * 60;
my $secret;
BEGIN {
    # Try to get 32 bytes from /dev/random
    if (open RANDOM, '/dev/random') {
	sysread RANDOM, $secret, 32;
	close RANDOM;
    }

    # If we can't, use a little entropy
    $secret = time . $$ unless $secret;

    # The secret string is the MD5 hash of that
    $secret = md5_hex($secret);
}
sub MakeTicket {
    # This routine is used to make a ticket that is
    # then saved as a http cookie in user's browser.
    my ($user, $ip, $now)=(@_);
    # Args:
    #      $user           the user name
    #      $ip             the remote IP
    #      $now            the issuing date

    enterit(MakeTicket => "($user, $ip, $now)");

    $ip = remote_ip() unless $ip;
    leaveit("undef") unless $ip;
    return undef unless $ip;

    $now = time unless $now;

    my $data = "$ip:$now:$expires:$user";
    my $seal = md5_hex("$secret:$data");
    my $ticket = "$seal:$data";
    leaveit("($ticket)");
    return $ticket;
}
#==================================================================================
sub VerifyTicket {
    # This routine is used to verify a ticket that is
    # loaded from a http cookie in user's browser.
    my ($foruser, $ticket)=(@_);
    # Args:
    #      $foruser the user name
    #      $ticket  the ticket

    enterit(VerifyTicket => "($foruser, $ticket)");

    my ($seal, $ip, $now, $expires, $user) = split /:/, $ticket;
    unless ($foruser eq $user) {
	leaveit("(0, PAMTicket: username mismatch)");
	return (0, "PAMTicket: username mismatch");
    }
    unless (remote_ip() eq $ip) {
	leaveit("(0, PAMTicket: IP address mismatch)");
	return (0, "PAMTicket: IP address mismatch");
    }
    unless ((time - $now) < $expires) {
	leaveit("(0, PAMTicket: ticket has expired)");
	return (0, "PAMTicket: ticket has expired");
    }
    my $wbticket = MakeTicket($user, $ip, $now);
    unless ($wbticket eq $ticket) {
	leaveit("(0, PAMTicket: ticket mismatch)");
	return (0, "PAMTicket: ticket mismatch");
    }
    leaveit("(1, $ticket)");
    return (1, $ticket);
}
#==================================================================================
sub CryptPlainPassword {
    # This routine is used to crypt a plain password. The crypted password is
    # then saved as a http cookie in user's browser.
    my ($plain_password, $salt, $uname)=(@_);
    # Args:
    #      $plain_password       the real password
    #      $salt                 cryption key
    #      $uname                user name
    #
    enterit(CryptPlainPassword => "($plain_password, $salt, $uname)");
    my $ticket = MakeTicket($uname) || 'INVALID';
    leaveit("($ticket)");
    return $ticket;
}
#==================================================================================
sub VerifyPlainPassword {
    # This function is invoked the first time a user signs on to the calendar system.
    # It verifies that user/password pair matches the one in the password database.
    my ($user, $passwd) = (@_);

    enterit(VerifyPlainPassword => "($user, $passwd)");

    sub my_conv_func {
	my @res;
	while ( @_ ) {
	    my $code = shift;
	    my $msg  = shift;
	    my $ans  = '';

	    if ($code == PAM_PROMPT_ECHO_ON()) {
		$ans = $user;
	    } elsif ($code == PAM_PROMPT_ECHO_OFF()) {
		$ans = $passwd;
	    }

	    push @res, (PAM_SUCCESS(), $ans);
	}
	push @res, PAM_SUCCESS();
	return @res;
    }

    my $pamh = Authen::PAM->new('webcal', $user, \&my_conv_func);
    ref($pamh) or leaveit("(0, Error code $pamh during PAM init!)");
    ref($pamh) or return (0, "Error code $pamh during PAM init!");

    my $res = $pamh->pam_authenticate;

    my @result;
    if ($res == PAM_SUCCESS()) {
	@result = (1, $passwd);
    } else {
	@result = (0, $pamh->pam_strerror($res));
    }
    leaveit("(", $result[0], ', ', $result[1], ")");
    return @result;
}

#==================================================================================
sub VerifyCryptedPassword {
    # This function is invoked everytime a calendar page is accessed. The system
    # reads in the crypted password from a cookie, call this function to verify
    # it against the relevent field in the password database.
    my ($user, $crypted_passwd) = (@_);

    enterit(VerifyCryptedPassword => "($user, $crypted_passwd)");
    my @res = VerifyTicket($user, $crypted_passwd);
    leaveit("(", $res[0], ', ', $res[1], ")");
    return @res;
}
#==================================================================================
# The next three routines are used for password management
#
sub AddPasswordEntry {
    # This routine is called as the last step of calendar creation process.
    # It records username/password in an approprate database.
    my ($user, $password) = (@_);

    return (1, "");
}
#==================================================================================
sub DeletePasswordEntry {
    # This routine is called as the last step of calendar deletion process.
    # It removes the relevent password entry from the password database.
    my ($user) = (@_);

    return (1,"");
}
#==================================================================================
sub ChangeUserPassword {
    # This routine is invoked from the calendar admin subsystem.
    # It is suppose to change user password.
    my ($user, $oldpswd, $newpswd) = (@_);

    return (0, "The PAMTicket authentication module does not allow for changing passwords.\n");
}
#==================================================================================
sub ReplaceUserPassword {
    # This routine is invoked by calendar admin to replace user password,
    # typically when someone forget his/her password.
    my ($user, $passwd) = (@_);

    return (0, "The PAMTicket authentication module does not allow for replacing passwords.\n");
}
#==================================================================================
1;
#==================================================================================
