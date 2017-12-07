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
package webcalAuth;
#==============================================================================

#==================================================================================
# MySQL Modifications
# reimplementation/modification of webcalAuth for usage with a MySQL
# by Vincent Jamart, René Schmit 2003-09-29
#
#
#
# DB schema is as follows (only User table):
#
#+------------------+--------------+------+-----+---------+----------------+
#| Field            | Type         | Null | Key | Default | Extra          |
#+------------------+--------------+------+-----+---------+----------------+
#| Account          | varchar(255) | YES  | MUL | NULL    |                |
#| PasswordCrypt    | varchar(100) |      |     |         |                |
#+------------------+--------------+------+-----+---------+----------------+
#==================================================================================

use webcalLock;
use Fcntl ':flock';
use Fcntl ':DEFAULT';
use Symbol;
use strict;
use POSIX;
use DBI;

my $dsn           = 'DBI:mysql:maildberver';
my $db_user_name  = 'mail-admin';
my $db_password   = 'admin-passwd';

my ($id, $password);


#==================================================================================
# This module contains authentication related functions used in webcal.
#
# To use an external authentication scheme, you need to re-implement all
# functions in this module. See Webcal_UNIX_Auth.pm for a working example.
#
#==================================================================================



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


#==================================================================================
sub AuthenticateNewUser
{
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
sub CryptPlainPassword
{
    # This routine is used to crypt a plain password. The crypted password is
    # then saved as a http cookie in user's browser.
    #my ($plain_password)=(@_);
    my ($plain_password, $salt)=(@_);
    # Args:
    #      $plain_password       the real password
    #      $salt                 cryption key
    #
    my ($crypted_password);

    if( $ =~ m/MSWin|NT/i )
	{
	  $crypted_password = $plain_password;
    }
    else
    {
	  if(!$salt)
      {
        $salt=time()^($$ +($$<<15));
      }
	  $crypted_password = crypt($plain_password,$salt);
    }
    return $crypted_password;
}
#==================================================================================
sub VerifyPlainPassword
{
    # This function is invoked the first time a user signs on to the calendar system.
    # It verifies that user/password pair matches the one in the password database.
    my ($user, $plain_passwd) = (@_);

    return VerifyPassword($user, $plain_passwd, 0);
}

#==================================================================================
sub VerifyCryptedPassword
{
    # This function is invoked everytime a calendar page is accessed. The system
    # reads in the crypted password from a cookie, call this function to verify
    # it against the relevant field in the password database.
    my ($user, $crypted_passwd) = (@_);

    return VerifyPassword($user, $crypted_passwd, 1);
}
#==================================================================================
sub VerifyPassword
{
    my ($user, $passwd, $passwd_is_crypted) = (@_);
    my ($status, $message) = (0,"");
	my ($cryptedPasswd);

    # the special anonymous user
    if ($user eq 'anonymous')
	{
	  if($passwd eq 'ok')
	  {
		return(1,"");
	  }
	  else
	  {
		return(0,"Unknown User");
      }
    }

    if (!defined $user or !defined $passwd)
    {
	  return (0, "Missing username or password");
    }

	my $dbh = DBI->connect($dsn, $db_user_name, $db_password)|| die "Cannot open Database connection";
    my $sth = $dbh->prepare("
        SELECT Account, PasswordCrypt, '$cryptedPasswd'
          FROM User
	     WHERE (Account = '$user')
		");
	$sth->execute();
	my ($Account, $PasswordCrypt) = $sth->fetchrow();
	$sth->finish;
	$dbh->disconnect;

	if($passwd_is_crypted)
	{
	  $cryptedPasswd = $passwd;
    }
	else
    {
	  $cryptedPasswd = CryptPlainPassword($passwd, $PasswordCrypt);
    }

	if ($cryptedPasswd ne $PasswordCrypt) # case-sensitive
	{
	  $status = 0;
	  $message=$::phr{'PasswordMismatch'};
    }
	else
	{
      $status  = 1;
      $message = $PasswordCrypt;
    }

	$sth->finish;

    return ($status, $message);
}

#==================================================================================
# The next three routines are used for password management
#

sub AddPasswordEntry
{
  # This routine is called as the last step of calendar creation process.
  # It records username/password in an approprate database.

  # error checking should be added... (rEnE)
  my ($user, $password) = (@_);

  my ($status, $message) = (1, "");
  my ($cryptedPassword);

  $cryptedPassword = CryptPlainPassword($password,"");

  my $dbh = DBI->connect($dsn, $db_user_name, $db_password) || die "Cannot open Database connection";
  my $sth = $dbh->prepare("
            INSERT INTO User (Account,PasswordCrypt) VALUES ('$user','$password')
	    ");
  $sth->execute();
  $sth->finish;
  $dbh->disconnect;

   return ($status, $message);
}

#==================================================================================
sub DeletePasswordEntry
{
  # This routine is called as the last step of calendar deletion process.
  # It removes the relevent password entry from the password database.

  # error checking should be added... (rEnE)
  my ($user) = (@_);

  my ($status, $message) = (1,"");

  my $dbh = DBI->connect($dsn, $db_user_name, $db_password)|| die "Cannot open Database connection";
  my $sth = $dbh->prepare("
    	DELETE FROM User WHERE Account = '$user'
        ");
  $sth->execute();
  $sth->finish;
  $dbh->disconnect;

  return ($status, $message);
}
#==================================================================================
sub ChangeUserPassword
{
    # This routine is invoked from the calendar admin subsystem.
    # It is suppose to change user password. 

  my ($user, $oldpswd, $newpswd) = (@_);
  my ($status, $message) = (1,"");

  my $dbh = DBI->connect($dsn, $db_user_name, $db_password)|| die "Cannot open Database connection";
  my $sth = $dbh->prepare("
            UPDATE User SET PasswordCrypt = '$newpswd' WHERE Account ='$user'
            ");
  $sth->execute();
  $sth->finish;
  $dbh->disconnect;

  return ($status, $message);
}
#==================================================================================

sub ReplaceUserPassword
 {
    # This routine is invoked by calendar admin to replace user password,
    # typically when someone forget his/her password.
  my ($user, $passwd) = (@_);


  my ($status, $message) = (1,"");
  my $dbh = DBI->connect($dsn, $db_user_name, $db_password)|| die "Cannot open Database connection";

  my $sth = $dbh->prepare("
              UPDATE User SET PasswordCrypt = '$passwd' WHERE Account ='$user'
              ");
  $sth->execute();
  $sth->finish;
  $dbh->disconnect;

  return ($status, $message);
}

#==================================================================================
1;
#==================================================================================
