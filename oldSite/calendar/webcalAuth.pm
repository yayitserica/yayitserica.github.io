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
# $Header: /home/cvs/webCal/webCal2/webcalAuth.pm,v 1.14 2005/01/14 19:27:21 mzou Exp $
#

package webcalAuth;

#==============================================================================
use strict;
#==================================================================================
# This module contains authentication related functions used in webcal. 
#
# See webcalAuth_default.pm and webcalAuth_ldap.pm for examples.
#
#==================================================================================
# most functions in this file returns (status, message).
# status=0  on Failure, message returns the details about the failure.
# status=1  on Success, message is ignored by the caller.
#==================================================================================
sub init_auth_handle {
    my $backend = $::o{'authbackend'} || 'default';
    my $handle = undef;

#    if$backend =~ /ldap/) {
#        use webcalAuth_ldap;
#        $handle = $webcalAuth_ldap::handle;
#    } else 
     {
        use webcalAuth_default;
        $handle = $webcalAuth_default::handle;        
     }
    if($handle and $handle->{'init'}) { $handle->{'init'}();}
    return $handle;
}
#==================================================================================
sub AuthenticateNewUser { 
    # This routine is called just before creating a new calendar. You can use it
    # together with an external authentication module to grant calendar creation
    # to only local users.
    # my ($user, $password)=(@_);
    # Args:
    #      $user         supplied username
    #      $password     supplied PLAIN (not crypted) password.
    #
    # Return:
    #  (status, "message")
    my $href = &init_auth_handle;
    return $href->{'AuthenticateNewUser'}(@_);
}

#==================================================================================
#
# This function, if defined, will be invoked before posting the calendar
# signup form.
# 
# If autoCreateCalendar is set, this routine is called to get name and email
# address of an authenticated new user.
#
#  Args:    none
#  Rreturn: none
#  Side-effects: set $::calinfo{'name'}, $::calinfo{'email'} etc. 
#
sub GetUserInfo {
    my $href = &init_auth_handle;
    if($href->{'GetUserInfo'}) { $href->{'GetUserInfo'}(@_);}
}
#==================================================================================
sub CryptPlainPassword {
    # This routine is used to crypt a plain password. The crypted password is 
    # then saved as a http cookie in user's browser.
    # my ($plain_password, $salt)=(@_);
    # Args:
    #      $plain_password       the real password
    #      $salt                 cryption key
    #
    # Return:
    #  crypted_password
    my $href = &init_auth_handle;
    return $href->{'CryptPlainPassword'}(@_);
}

#==================================================================================
#
# This routine is called to recover plain password. It is used by an external
# auth module to authenticate a user. E.g, auth against a ldap server. It is
# not used by the default unix-password authentication.
#
sub DecryptPassword {
    # Args:
    #      $pcipher_password     crypted password
    #      $salt                 cryption key
    #
    # Return:
    #  plain_text_password
    # my ($cipher_password, $salt)=(@_);
    my $href = &init_auth_handle;
    if($href->{'DecryptPassword'}) {return $href->{'DecryptPassword'}(@_);}
    return undef;
}

#==================================================================================
sub VerifyPlainPassword {
    # This function is invoked the first time a user signs on to the calendar system. 
    # It verifies that user/password pair matches the one in the password database. 
    # my ($user, $plain_passwd) = (@_);
    # Args:
    #  $user    username
    #  $pswd    password
    #
    my $href = &init_auth_handle;
    return $href->{'VerifyPlainPassword'}(@_);
}

#==================================================================================
sub VerifyCryptedPassword {
    # This function is invoked everytime a calendar page is accessed. The system
    # reads in the crypted password from a cookie, call this function to verify
    # it against the relevent field in the password database.
    # my ($user, $crypted_passwd) = (@_);
    # Args:
    #  $user    username
    #  $pswd    crypted password
    #
    # Return:
    #  (status, "message")
    #
    my $href = &init_auth_handle;
    return $href->{'VerifyCryptedPassword'}(@_);
}
#==================================================================================
# The next three routines are used for password management
#
sub AddPasswordEntry {
    # This routine is called as the last step of calendar creation process.
    # It records username/password in an approprate database. 
    # my ($user, $password) = (@_);
    # Args:
    #  $user    username
    #  $pswd    crypted password
    # Return:
    #  (status, "message")
    #
    my $href = &init_auth_handle;
    return $href->{'AddPasswordEntry'}(@_);    
} 
#==================================================================================
sub DeletePasswordEntry {
    # This routine is called as the last step of calendar deletion process.
    # It removes the relevent password entry from the password database.
    # my ($user) = (@_);
    # Args:
    #  $user    username
    # Return:
    #  (status, "message")
    #
    my $href = &init_auth_handle;
    return $href->{'DeletePasswordEntry'}(@_);    
}
#==================================================================================
sub ChangeUserPassword {
    # This routine is invoked from the calendar admin subsystem.
    # It is suppose to change user password. 
    # my ($user, $oldpswd, $newpswd) = (@_);
    # Args:
    #  user           username
    #  oldpassword    old password
    #  password       new password
    # Return:
    #  (status, "message")
    my $href = &init_auth_handle;
    return $href->{'ChangeUserPassword'}(@_);
}
#==================================================================================
sub ReplaceUserPassword {
    # This routine is invoked by calendar admin to replace user password,
    # typically when someone forget his/her password.
    # my ($user, $passwd) = (@_);
    # Args:
    #  user           username
    #  password       new password
    # Return:
    #  (status, "message")
    my $href = &init_auth_handle;
    return $href->{'ReplaceUserPassword'}(@_);
}
#==================================================================================
sub autoCreateCalendar {
    # Automatic calendar creation. 
    # 
    #  0 or undef:  Will not create calendar automatically.
    #  positive:    Will automatically create a calendar for a succesfully
    #               authenticated user, provided that &GetUserInfo can obtain
    #               the email address of the user.
    # negative:     Will not create the calendar, but will post the signup
    #               screen asking the user to confirm calendar setup.
    my $href = &init_auth_handle;
    if($href->{'autoCreateCalendar'}) { return $href->{'autoCreateCalendar'}(@_);}
    return 0;
}
#==================================================================================
sub disallowPasswordChange {
    # Wether to disable password change. 

    my $href = &init_auth_handle;
    if($href->{'disallowPasswordChange'}) { return $href->{'disallowPasswordChange'}(@_);}
    return 0;
}

#==================================================================================
sub additionalAdminAuthInfo {
    #
    my $href = &init_auth_handle;
    if($href->{'additionalAdminAuthInfo'}) { return $href->{'additionalAdminAuthInfo'}(@_);}
    return undef;
}
#==================================================================================
1;
#==================================================================================









