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
#
# $Header: /home/cvs/webCal/webCal2/webcalVirtual.pm,v 1.5 2004/08/21 05:07:07 mzou Exp $
#

#==============================================================================
#
#   Virtual server setup
#
#-----------------------------------------------------------------
#
package webcalVirtual;
use strict;
use webcalConfig;

#==============================================================================
#
#  Initialize a virtual server. This works only on name based virtual servers.
#  I.e., initialization is solely based on $ENV{'SERVER_NAME'}
#
sub initVirtualServer {

    my $server = $ENV{'SERVER_NAME'};
    if($server and $webcalConfig::v{$server}) {
	my ($hash, $k, $v); 
	$hash = $webcalConfig::v{$server};
	foreach $k (keys %$hash) {  $::o{$k} = $hash->{$k}; }
	# ====== begin banner insertion =======
	if($::o{'banner'} and -f "$::o{'banner'}") { do "::o{'banner'}";  } 
	# ======  end banner insertion =======
    } else {
	# ====== begin banner insertion =======
	if($webcalConfig::c{'banner'} and -f "$webcalConfig::c{'banner'}") {
	    do "$webcalConfig::c{'banner'}";  
	} 
	# ======  end banner insertion =======
    }
}
#==============================================================================
1;
