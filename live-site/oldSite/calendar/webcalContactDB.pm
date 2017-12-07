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
# $Header: /home/cvs/webCal/webCal2/webcalContactDB.pm,v 1.2 2005/01/14 19:27:21 mzou Exp $
#

package webcalContactDB;

#==============================================================================
use strict;

#==================================================================================
#
# Load the whole addressbook.
# Input: none
# Output:
#   (status, count)
# Site-effect:  @::address is set.

sub LoadAddressBook { 
    my $backend = $::o{'contactdb'} || 'default';

#    if($backend =~ /ldap/) {
#        use webcalContactDB_ldap;
#        my $total = &webcalContactDB_ldap::LoadAddressBook(@_);
#        return (1,$total);
#    }
    return (0,0);
}

#==================================================================================
1;
#==================================================================================










