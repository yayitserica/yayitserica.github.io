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
# $Header: /home/cvs/webCal/webCal2/webcalAuth_ldap.pm,v 1.5 2004/08/21 05:07:07 mzou Exp $
#
# This module implements LDAP authentication for webcal. See webcalAuth.pm
# for info.
#

package webcalAuth_ldap;
#==============================================================================
use webcalCrypt;
use strict;
use Net::LDAP;
#==================================================================================
#
# We keep the ldap server connection open for the duration of this server
#

sub ldap_connect {
    my $server = $ENV{'SERVER_NAME'};
    if( not $webcalAuth_ldap::ldap_connections{$server}) {
        my $conf = $::o{'ldap_conf'};
        my ($s_opts, $tls_opts, $ldap);
        $s_opts   = $conf->{'server_options'};
        $tls_opts = $conf->{'tls_options'};
        $ldap = Net::LDAP->new($conf->{'server'}, @{$s_opts});
        if($ldap and $conf->{'tls'}) { 
            my $result = $ldap->start_tls(@{$tls_opts});
            if($result->code()) {
                $ldap->unbind() if $ldap;
                $ldap = undef; 
                $::ldap_error = $result->error() . "$server";
            }
        }
	$webcalAuth_ldap::ldap_connections{$server} = $ldap;
    }
    return $webcalAuth_ldap::ldap_connections{$server};
}
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
    my $ldap = &ldap_connect();
    my $conf = $::o{'ldap_conf'};
    if($ldap) {
        my $s_opts = $conf->{'search_options'};
	my $uid= $conf->{'auth_attribute'} || "uid";
        my $result = $ldap->search(@{$s_opts}, filter => "($uid=$user)");
        if($result->code()) { return(0, "LDAP search failed: " . $result->error() );}
        if(not $result->count) { return(0, "No matching $uid=$user found");}
        # use the first entry;
        my $entry = $result->entry(0);
        my $msg = $ldap->bind($entry->dn(), password => $password);
        if($msg->code()) { return(0, "Password Incorrect: " . $msg->error());} 
        return (1, "");
    }
    return(0, "Cannot connect to ldap server: $conf->{'server'}". $::ldap_error);
}
#==================================================================================
sub CryptPlainPassword {
    # This routine is used to crypt a plain password. The crypted password is 
    # then saved as a http cookie in user's browser.
    my ($plain_password, $salt)=(@_);

    my $crypted_password = webcalCrypt::Encrypt($plain_password);
    return ($crypted_password);
}

sub DecryptPassword {
    my ($cipher_password, $salt)=(@_);

    my $plain_password = webcalCrypt::Decrypt($cipher_password);
    return ($plain_password);
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

    # need to retrieve plain passwd 
    if($passwd_is_crypted) { $passwd = DecryptPassword($passwd, "");}

    # If succesfull, $message returns the crypted password. It is also the cryption key.
    my $ldap = &ldap_connect;
    my $conf = $::o{'ldap_conf'};
    my $s_opts = $conf->{'search_options'};
    if($ldap) {
	my $uid= $conf->{'auth_attribute'} || "uid";
        my $result = $ldap->search(@{$s_opts}, filter=> "($uid=$user)");
        if($result->code()) { return(0, "Could not Authenticate. LDAP search failed: " . $result->error() );}
        if(not $result->count) { return(0, "No matching $uid=$user found");}
        # use the first entry;
        my $entry = $result->entry(0);
        my $msg = $ldap->bind($entry->dn(), password => $passwd);
        if($msg->code()) { return(0, "Password Incorrect: " . $msg->error());} 
        return (1, "");
    }
    return (0, "Could not authenticate. $!\n");
}
#==================================================================================
#
# This function, if defined, will be invoked before posting the calendar
# signup form.
# 
# If autoCreateCalendar is set, this routine is called to get name and email
# address of an authenticated new user.
#
sub GetUserInfo {
    my $user = $::d{'remote_user'};
    if(not $user or $user eq 'anonymous') { return;}
    my $ldap = &ldap_connect();
    my $conf = $::o{'ldap_conf'};
    if($ldap) {
        my $s_opts = $conf->{'search_options'};
	my $uid= $conf->{'auth_attribute'} || "uid";
        my $result = $ldap->search(@{$s_opts}, filter => "($uid=$user)");
        if($result->code()) { return ;}
        if(not $result->count) { return;}
        # use the first entry;
        my $entry = $result->entry(0);
        my $cn = $entry->get_value('cn');       $::calinfo{'name'} = $cn     if $cn;
        my $email = $entry->get_value('mail'); $::calinfo{'email'} = $email if $email;
        my $URI= $entry->get_value('labeledURI'); $::calinfo{'homepage'} = $URI if $URI;
        $::calinfo{'w'}=$user;
    }
}
#==================================================================================
# The next four routines are used for password management
#
sub AddPasswordEntry {
    # This routine is called as the last step of calendar creation process.
    # It records username/password in an approprate database. 
    my ($user, $password) = (@_);

    # Password should be managed by a LDAP utility. It is really
    # not a good idea to mess with your directory from here.
    return (1, "");
} 
#==================================================================================
sub DeletePasswordEntry {
    # This routine is called as the last step of calendar deletion process.
    # It removes the relevent password entry from the password database.
    my ($user) = (@_);

    # Password should be managed by a LDAP utility. It is really
    # not a good idea to mess with your directory from here.
    return (1, "");
}
#==================================================================================
#
sub LdapHashPassword {
    my ($password) = (@_);
    # Assume base64 hash is used. 
    use Digest::MD5 qw(md5_base64);
    my $pswd64= "{MD5}" . md5_base64($password) . "==";
    return $pswd64;
}
#==================================================================================
sub ChangeUserPassword {
    # This routine is invoked from the calendar admin subsystem.
    # It is suppose to change user password. 
    my ($user, $oldpswd, $newpswd) = (@_);

    # however, we may allow users to change their password. This
    # is controlled by the configuration variable 
    #  disallowPasswordChange;    
    # 
    my $conf = $::o{'ldap_conf'};
    if(not $conf->{'disallowPasswordChange'}) {
        my $ldap = &ldap_connect();
        if($ldap) {
            my $s_opts = $conf->{'search_options'};
	    my $uid= $conf->{'auth_attribute'} || "uid";
            my $result = $ldap->search(@{$s_opts}, filter => "($uid=$user)");
            if($result->code()) { return(0, "LDAP search failed: " . $result->error() );}
            if(not $result->count) { return(0, "No matching $uid=$user found");}
            # use the first entry;
            my $entry = $result->entry(0);
            my $msg = $ldap->bind($entry->dn(), password => $oldpswd);
            if($msg->code()) { return(0, "Password Incorrect: " . $msg->error());} 
            # ok, user authenticated, try change password.
            my $pswd64 = LdapHashPassword($newpswd);
            $entry->replace(userPassword=> $pswd64);
            $msg = $entry->update($ldap);
            if($msg->code()) { return(0, "Could not change your password: " . $msg->error());} 
            return(1, "Password Changed Succefully");
        }
    }    
    return (0, "Please use your LDAP utilities to change password.");    
}
#==================================================================================
sub ReplaceUserPassword {
    # This routine is invoked by calendar admin to replace user password,
    # typically when someone forget his/her password.
    my ($user, $passwd) = (@_);
    
    # If changing of password is allowed, administrator can reset user password also.
    # This of course requires proper LDAP credential.
    #
    my $conf = $::o{'ldap_conf'};
    if(not $conf->{'disallowPasswordChange'}) {
        my $ldap = &ldap_connect();
        if($ldap) {
            my $s_opts = $conf->{'search_options'};
	    my $uid= $conf->{'auth_attribute'} || "uid";
            my $result = $ldap->search(@{$s_opts}, filter => "($uid=$user)");
            if($result->code()) { return(0, "LDAP search failed: " . $result->error() );}
            if(not $result->count) { return(0, "No matching $uid=$user found");}
            # use the first entry;
            my $entry = $result->entry(0);
            my ($admin_dn,  $admin_pass);
            
            # now try bind as the login user
            if($::calinfo{'ldap_root_dn'}) {
                $admin_dn = $::calinfo{'ldap_root_dn'};
                $admin_pass = $::calinfo{'ldap_root_password'};
            } else {
                my $admin = $::d{'remote_user'};
                $admin_pass = $::d{'remote_user_crypted_password'};
                $admin_pass = DecryptPassword($admin_pass);
                my $ans = $ldap->search(@{$s_opts}, filter => "($uid=$admin)");
                if($ans->code() or not $ans->count) { return(0, "No matching $uid=$admin found");}
                my $tmp = $ans->entry(0);
                $admin_dn = $tmp->dn();
            }
            if( $admin_dn and $admin_pass) {
                my $msg = $ldap->bind($admin_dn, password => $admin_pass);
                if($msg->code()) { return(0, "Incorrect Password for $admin_dn: " . $msg->error());} 
                # ok, user authenticated, try change password.
                my $pswd64 = LdapHashPassword($passwd);
                $entry->replace(userPassword=> $pswd64);
                $msg = $entry->update($ldap);
                if($msg->code()) { return(0, "Could not change password for $user. " . $msg->error());} 
                return(1, "Password replaced succefully: $user");
            } else { return(0, "Are you sure you can replace other user's password?");}
        }
    }
    return (0, "Please use your LDAP utilities to change password.");    
}

#==================================================================================
sub autoCreateCalendar {
    my $conf = $::o{'ldap_conf'};
    if(defined $conf->{'autoCreateCalendar'}) {
        return $conf->{'autoCreateCalendar'};
    }
    return 0;
}
#==================================================================================
sub disallowPasswordChange {
    my $conf = $::o{'ldap_conf'};
    if(defined $conf->{'disallowPasswordChange'}) {
        return $conf->{'disallowPasswordChange'}
    }
    return 0;
}
#==================================================================================
sub additionalAdminAuthInfo {
    my $conf = $::o{'ldap_conf'};
    if(defined $conf->{'ldap_rootdn_info'}) {
        return $conf->{'ldap_rootdn_info'};
    }
    return 0;
}
#==================================================================================
$webcalAuth_ldap::handle = {
    'AuthenticateNewUser'   => \&AuthenticateNewUser,
    'CryptPlainPassword'    => \&CryptPlainPassword,
    'VerifyPlainPassword'   => \&VerifyPlainPassword,
    'VerifyCryptedPassword' => \&VerifyCryptedPassword,
    'AddPasswordEntry'      => \&AddPasswordEntry,
    'DeletePasswordEntry'   => \&DeletePasswordEntry,
    'ChangeUserPassword'    => \&ChangeUserPassword,
    'ReplaceUserPassword'   => \&ReplaceUserPassword,
    
    'GetUserInfo'           => \&GetUserInfo,
    'DecryptPassword'       => \&DecryptPassword,
    'autoCreateCalendar'    => \&autoCreateCalendar,
    'disallowPasswordChange'=> \&disallowPasswordChange,
   'additionalAdminAuthInfo'=>\&additionalAdminAuthInfo,
    
};
#==================================================================================
1;
#==================================================================================
