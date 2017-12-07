#!/usr/bin/perl

use lib "/home/sites/yayitserica.com/public_html/calendar";

#!/usr/bin/perl
#
# $Header: /home/cvs/webCal/webCal2/webcal.pl,v 1.73 2004/08/21 05:07:06 mzou Exp $
#

#
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
#==============================================================================

use webcalSupport;
#use Carp ();
#local $SIG{__WARN__} = \&Carp::cluck;
#==============================================================================
# mod_perl magic:
#  When run under Apache::Registry, this script is packed as
#    handler() { blah ... the code ... }
#  when invoked, the arg passed is the http request record.
#  We save it as a global var. When done process the request,
#  we'll cache calendar data if needed. Caching maybe time consuming.
#  If done as part of http request processing, it will leave an open
#  socket which makes the client seems hanging (since there will be
#  no data transfer). We'll register a cleanup_handler after processing
#  the request, close the socket and do the caching in the clean up
#  handler. The handler is registered to the request. When finished,
#  it will be destroyed.
#

if($ENV{'MOD_PERL'}) { $::this_request = shift; } else { $::this_request = undef;}
&webcalSupport::webcal_handler(); 

#======================================================================================
