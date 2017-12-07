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
# $Header: /home/cvs/webCal/webCal2/webcalLock.pm,v 1.3 2004/08/21 05:07:07 mzou Exp $
#

#==============================================================================
package webcalLock;
#==============================================================================
use Fcntl ':flock';
use Fcntl ':DEFAULT';
use Symbol;
use strict;
use POSIX;
#==============================================================================
sub doflock {
    # unfortunately flock is not implemented on MSWin32 ....
    # fname must be a absolute pathname
    my ($fhandle, $lflag, $fname) =(@_);
    if($ =~ /MSWin/) {
        # make all locks exclusive
	if($fname =~ /^(\/.+)$/) { $fname = $1;} # silly untaint $fname
        my $lockfile = "$fname" . '.lck';
        if( $lflag & LOCK_UN) {
            if( -d $lockfile) {  rmdir $lockfile;  } 
            return 1; 
        } else {
            my $timeout = 10;
            while($timeout > 0 and ! mkdir($lockfile, 0755) )  { sleep 1; $timeout -= 1;}
            if($timeout > 0) {  return 1;   }
            else {
                if(-d $lockfile ) {
		    $ = time;
                    my $mtime = -M $lockfile;
                    # if lock is over one hour old, assume it is a bad lock
                    if($mtime > 0.05) {    return 1;   } 
                    $! = 17; # file exists already 
                }  else {  $! = 1;  } # permission denied
                return 0;
            }
        }
    } else {
        return(flock($fhandle, $lflag));
    }
}
#==============================================================================
1;
#==============================================================================
