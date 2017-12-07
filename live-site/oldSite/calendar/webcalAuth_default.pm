#==============================================================================
#
#            webcal --- a web based calendar program
#
#          Copyright (C) 2000, 2001, 2002, 2003, 2004  Maorong Zou
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
# $Header: /home/cvs/webCal/webCal2/webcalAuth_default.pm,v 1.3 2005/01/14 19:27:21 mzou Exp $
#

package webcalAuth_default;
#==============================================================================
use webcalLock;
use Fcntl ':flock';
use Fcntl ':DEFAULT';
use Symbol;
use strict;
use POSIX;
#==================================================================================
# This module contains authentication related functions used in webcal. 
#
# To use an alternate authentication scheme, you need to re-implement all
# functions in this module. 
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
sub CryptPlainPassword {
    # This routine is used to crypt a plain password. The crypted password is 
    # then saved as a http cookie in user's browser.
    my ($plain_password, $salt)=(@_);
    # Args:
    #      $plain_password       the real password
    #      $salt                 cryption key
    #
    my ($crypted_password);

    if( $ =~ m/MSWin|NT/i ) {
	$crypted_password = $plain_password;
    } else {
	if(!defined($::have_md5_crypt)) {
	    if( substr(crypt('foo', '$1$barbaz$'),0,10) eq '$1$barbaz$')  {
                $::have_md5_crypt = 1;
            } else {
		$::have_md5_crypt = 0;
	    }
	}
	if(!$salt) { 
	    $salt=(time()^($$ +($$<<15)))<<8;
	    if($::have_md5_crypt) {
		$salt= '$1$' . substr($salt,0,8) . '$'; 
            }
        }
        $crypted_password = crypt($plain_password,$salt);
    }
    return $crypted_password;
}
#==================================================================================
sub VerifyPlainPassword {
    # This function is invoked the first time a user signs on to the calendar system. 
    # It verifies that user/password pair matches the one in the password database. 
    my ($user, $plain_passwd) = (@_);

    return VerifyPassword($user, $plain_passwd, 0);
}

#==================================================================================
sub VerifyCryptedPassword {
    # This function is invoked everytime a calendar page is accessed. The system
    # reads in the crypted password from a cookie, call this function to verify
    # it against the relevent field in the password database.
    my ($user, $crypted_passwd) = (@_);

    return VerifyPassword($user, $crypted_passwd, 1);
}
#==================================================================================
sub VerifyPassword {
    my ($user, $passwd, $passwd_is_crypted) = (@_);
    $user="" if not $user; $passwd="" if not $passwd; 
    # the special anonymous user
    if($user eq 'anonymous') {if($passwd eq 'ok'){return(1,"");}else{return(0,"Unknown User");}}
    if(!defined $user or !defined $passwd) { return (0, "Missing username or password");}

    # If succesfull, $message returns the crypted password. It is also the cryption key.
    my ($status, $message) = (0,"");
    my ($pfile, $fhpq, $cryptedPasswd);
    $cryptedPasswd="";
    $pfile="$::o{'spooldir'}/passwd";
    $fhpq = gensym;
    if(open($fhpq, "<$pfile")) {
	if(! &webcalLock::doflock( \*$fhpq, LOCK_SH,"$pfile")) {
	    $status=0; $message="Cannot lock file '$pfile': $!\n";
	} else {
            my $in=0;
	    while(<$fhpq>) {
		chop;
		my ($nam, $pwdd)=split(/:/, $_);
		if($nam eq $user) {
                    $in =1;
		    if($passwd_is_crypted) { $cryptedPasswd = $passwd; }
		    else {$cryptedPasswd = CryptPlainPassword($passwd, $pwdd);}
		    my $crypt_crypted_passwd= CryptPlainPassword($pwdd, $nam);
		    if($pwdd ne $cryptedPasswd and $crypt_crypted_passwd ne $cryptedPasswd) {
			$status = 0; $message="Password mismatch";
		    } else { $status = 1; $message = $pwdd;}
		    last;
		}
	    }
	    if(!&webcalLock::doflock( \*$fhpq, LOCK_UN,"$pfile")) {
		$status=0;  $message="Cannot unlock file '$pfile': $!\n";
	    }
            if(not $in) {$status=0; $message = "No such user: $user";}
	}
	close $fhpq;
    } else { $status=0; $message="Cannot open password file: $!\n";}

    return ($status, $message);
}
#==================================================================================
# The next three routines are used for password management
#
sub AddPasswordEntry {
    # This routine is called as the last step of calendar creation process.
    # It records username/password in an approprate database. 
    my ($user, $password) = (@_);

    my ($status, $message) = (1, "");
    my ($cryptedPassword, $fhdle, $salt);
    $cryptedPassword = CryptPlainPassword($password,"");
    $fhdle = gensym;	     
    if (open($fhdle, ">>$::o{'spooldir'}/passwd") ) {
	if(! &webcalLock::doflock( \*$fhdle, LOCK_EX, "$::o{'spooldir'}/passwd") )  { 
	    $status= 0; $message = "Cannot lock file '$::o{'spooldir'}/passwd': $!\n";
	} else {
	    print $fhdle "$user:$cryptedPassword\n";
	    if( ! &webcalLock::doflock( \*$fhdle, LOCK_UN,"$::o{'spooldir'}/passwd")) {
		$status = 0; $message="Cannot unlock file '$::o{'spooldir'}/passwd': $!\n";
	    }
	    close $fhdle;
	}
    } else {
	$status = 0; $message = "Cannot open password file: $!";
    }
    return ($status, $message);
} 
#==================================================================================
sub DeletePasswordEntry {
    # This routine is called as the last step of calendar deletion process.
    # It removes the relevent password entry from the password database.
    my ($user) = (@_);

    my ($status, $message) = (1,"");
    my (@table, $pfile, $nam, $pwdd, $i, $tmp);
    @table=();
    $pfile="$::o{'spooldir'}/passwd";
    my $fhm = gensym;
    if(open($fhm, "<$pfile")) {
	if(! &webcalLock::doflock( \*$fhm, LOCK_SH, "$pfile")) {
	    $status=0; $message= "Cannot lock file '$pfile': $!\n";
	} else {
	    while(<$fhm>) {
		chop;
		($nam, $pwdd)=split(/:/, $_);
		if($nam ne  $user) {
		    push @table, $_;
		}
	    }
	    if(! &webcalLock::doflock( \*$fhm, LOCK_UN, "$pfile")) {
		$status=0; $message="Cannot unlock file '$pfile': $!\n";
	    } else {
		close $fhm;
		my $fhn = gensym;
		if(sysopen($fhn, "$pfile", O_WRONLY | O_CREAT, 0644)) {
		    if(! &webcalLock::doflock( \*$fhn, LOCK_EX, "$pfile")) {
			$status=0; $message="Cannot lock file '$pfile': $!\n";
		    } else {
			truncate($fhn, 0);
			for $i (0 .. $#table) {
			    $tmp = "$table[$i]\n";
			    print $fhn $tmp;
			}
			if(! &webcalLock::doflock( \*$fhn, LOCK_UN, "$pfile")) {
			    $status=0; $message = "Cannot unlock file '$pfile': $!\n";
			}
			close $fhn;
		    }
		}
	    }
	}
    } else { $status = 0; $message="Cannot open password file: $!\n";}
    return ($status, $message);
}
#==================================================================================
sub ChangeUserPassword {
    # This routine is invoked from the calendar admin subsystem.
    # It is suppose to change user password. 
    my ($user, $oldpswd, $newpswd) = (@_);
    
    my ($status, $message) =(1, "");
    my ($pfile, $nam, $pwdd, @table, $tmp, $i, $salt, $npaswd, $opaswd);    
    $npaswd= CryptPlainPassword($newpswd, "");
    @table=();
    $pfile="$::o{'spooldir'}/passwd";
    my $fhp = gensym;
    if(open($fhp, "<$pfile")) {
	if(! &webcalLock::doflock( \*$fhp, LOCK_SH, "$pfile")) {
	    $status = 0;  $message="Cannot lock file '$pfile': $!\n";
	} else {
	    while(<$fhp>) {
		chop;
		($nam, $pwdd)=split(/:/, $_);
		if($nam eq  $user) {
                    $opaswd= CryptPlainPassword($oldpswd,$pwdd);
		    if(not $pwdd or $pwdd eq $opaswd) {	#ok passwd matched
			$tmp = "$nam:$npaswd";
			push @table, $tmp;
		    } else {
			$status =0; $message = $::phr{'Invalidpassword'};
			last;
		    }
		} else {  push @table, $_; }
	    }
	    if(!&webcalLock::doflock( \*$fhp, LOCK_UN, "$pfile")) {
		$status=0;  $message= "Cannot unlock file '$pfile': $!\n";
	    }
	}
	close $fhp;
    } else { $status =0; $message="Cannot open password file: $!\n"; }
    
    if($status) {
	my $fhq = gensym;
	if(sysopen($fhq, "$pfile", O_WRONLY | O_CREAT, 0644)) {
	    if(! &webcalLock::doflock( \*$fhq, LOCK_EX, "$pfile")) {
		$status=0; $message="Cannot lock file '$pfile': $!\n";
	    } else {
		truncate($fhq, 0);
		for $i (0 .. $#table) {
		    $tmp = "$table[$i]\n";
		    print $fhq $tmp;
		}
		if(!&webcalLock::doflock( \*$fhq, LOCK_UN,"$pfile")) {
		    $status=0;  $message="Cannot unlock file '$pfile': $!\n";
		}
	    }
	    close $fhq;
	} else { $status=0; $message="Cannot open password file: $!\n";}
    }
    return ($status, $message);
}
#==================================================================================
sub ReplaceUserPassword {
    # This routine is invoked by calendar admin to replace user password,
    # typically when someone forget his/her password.
    my ($user, $passwd) = (@_);

    my ($status, $message)=(1,"");
    my ($oldpswd, $npaswd,$pfile, $nam, $pwdd, @table, $tmp, $i, $salt, $found);
    @table=();
    $npaswd= CryptPlainPassword($passwd, "");
    $found = 0;
    $pfile="$::o{'spooldir'}/passwd";
    my $fhpp = gensym; 
    if(open($fhpp, "<$pfile")) {
	if(!&webcalLock::doflock( \*$fhpp, LOCK_SH, "$pfile")) {
	    $status=0; $message="Cannot lock file '$pfile': $!\n";
	} else {
	    while(<$fhpp>) {
		chop;
		($nam, $pwdd)=split(/:/, $_);
		if($nam eq  $user) {
		    $tmp = "$nam:$npaswd";
		    push @table, $tmp;
		    $found = 1;
		} else {  push @table, $_; }
	    }
	    if(!&webcalLock::doflock( \*$fhpp, LOCK_UN, "$pfile")) {
		$status=0; $message="Cannot unlock file '$pfile': $!\n";
	    }
	    close $fhpp;
	    if(!$found) { $status=0; $message= "\'$user\' does not exist.";}
	}
    } else { $status=0;  $message="Cannot open password file: $!\n";}

    if($status) {
	my $fhq = gensym;
	if(sysopen($fhq, "$pfile", O_WRONLY | O_CREAT, 0644)) {
	    if(!&webcalLock::doflock( \*$fhq, LOCK_EX, "$pfile")) {
		$status=0; $message="Cannot lock file '$pfile': $!\n";
	    } else {
		truncate($fhq, 0);
		for $i (0 .. $#table) {
		    $tmp = "$table[$i]\n";
		    print $fhq $tmp;
		}
		if(!&webcalLock::doflock( \*$fhq, LOCK_UN,"$pfile")) {
		    $status=0;  $message="Cannot unlock file '$pfile': $!\n";
		}
	    }
	    close $fhq;
	} else { $status=0;  $message="Cannot open password file: $!\n";}
    }
    return ($status, $message);
}
#==================================================================================
$webcalAuth_default::handle = {
    'AuthenticateNewUser'   => \&AuthenticateNewUser,
    'CryptPlainPassword'    => \&CryptPlainPassword,
    'VerifyPlainPassword'   => \&VerifyPlainPassword,
    'VerifyCryptedPassword' => \&VerifyCryptedPassword,
    'AddPasswordEntry'      => \&AddPasswordEntry,
    'DeletePasswordEntry'   => \&DeletePasswordEntry,
    'ChangeUserPassword'    => \&ChangeUserPassword,
    'ReplaceUserPassword'   => \&ReplaceUserPassword,
};
#==================================================================================

1;
#==================================================================================










