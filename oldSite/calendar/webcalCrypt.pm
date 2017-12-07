#==============================================================================
#
#            webcal --- a web based calendar program
#
#          Copyright (C) 2000, 2001, 2002, 2003, 2004  Maorong Zou
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
# $Header: /home/cvs/webCal/webCal2/webcalCrypt.pm,v 1.2 2004/08/21 05:07:07 mzou Exp $
#
#
package webcalCrypt;
#==============================================================================
use strict;
#==============================================================================
# This is a sample. You should use a decent crypto algorithm to encrypt
# user passwords. The encrypted password are saved as cookies on client
# browsers. On a production system, please replace this file with
#  webcalCrypt_CBC.pm
# and make sure you've the necessary crypto related perl modules installed. 
# 
#==============================================================================
sub Encrypt {
    my ($plaintext) = (@_);
    $plaintext =~ tr/A-Za-z0-9/N-ZA-Mn-za-m5-90-4/;
    return $plaintext;
}
sub Decrypt {
    my ($ciphertext) = (@_);
    $ciphertext =~ tr/A-Za-z0-9/N-ZA-Mn-za-m5-90-4/;
    return $ciphertext;
}
#==============================================================================
1;
#==============================================================================
