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
# $Header: /home/cvs/webCal/webCal2/webcalCrypt_CBC.pm,v 1.2 2004/08/21 05:07:07 mzou Exp $
#
# Replacement of webcalCrypt.pm.
#
# This is a common interface for most perl block ciphers available under Crypt:: 
#
package webcalCrypt;
#==============================================================================

use strict;
use MIME::Base64;
use Crypt::CBC;
use POSIX;

#==============================================================================
# This module requires two variables. 
#    'keyfile'  pathname to hold (de)encryption 
#    'cipher'    (de)encryption algorithm
# They're set in the 'encryption' hashtabe in
# virtual server config. 
#
# You need to safe guard this file well.
# This file need to be readable by your webserver, and should contain
# a 16 byte key.
#
# Tested ciphers:  Blowfish, Twofish, IDEA, and DES
#
#==============================================================================
#
# secret encryption/decryption key. get_key will try to read the key
# from a file dekey. If this file doesn't exist and generate_key
# is set, it generates a key and save it.

sub get_key {
    my $server = $ENV{'SERVER_NAME'};
    my $conf = $::o{'encryption'};
    my ($generate_key) = (@_);
    my $key = undef;
    my $keyfile = $conf->{'keyfile'};
    if(not $keyfile) { $keyfile = "/tmp/" . Digest::MD5::md5_base64($server);}

    if( -f $keyfile) {
        if(open(KEYFILE, "<$keyfile")) {
            chop($key = <KEYFILE>);
            close KEYFILE;
        } 
    } 
    if(not $key) {
        if($generate_key) {
            if(sysopen(KEYFILE, "$keyfile", O_WRONLY | O_CREAT, 0600)) {
                use Digest::MD5  qw(md5 md5_hex md5_base64);   
                my $src;
                if(open(SRC, "<./webcalConfig.pm")) {
                    local ($/)=(undef);
                    my $src = <SRC>;
                    close SRC;
                } else {
                    my $salt=time()^($$ +($$<<15));
                    $src = crypt("no secret!", $salt);
                }
                $key = Digest::MD5::md5_base64($src);
                my $len = length($key);
                if($len > 16) { $key = substr $key, 0, 16;}
                truncate(KEYFILE, 0);
                print KEYFILE $key, "\n";
                close KEYFILE;
            }
        } 
    }
    $key;
}
#==============================================================================
# encryt plain text, and return base64 encoded ciphertext
sub Encrypt {
    my ($plaintext) = (@_);
    my $key = get_key(1);
    my $conf = $::o{'encryption'};
    
    if(not $key) {
        my $server = $ENV{'SERVER_NAME'};
        $::debugInfo{'key-error1'} = "Cannot get encryption key.\n"; # KEYFILE=$conf->{'keyfile'}
        print STDERR  $::debugInfo{'key-error1'};
        return undef;
    }

    my $cipher = Crypt::CBC->new( {'key'             => $key,
                                   'cipher'          => $conf->{'cipher'},
                                   'iv'              => '$KJh#(}q',
                                   'regenerate_key'  => 0,   # default true
                                   'padding'         => 'space',
                                   'prepend_iv'      => 0
                                   });    
    my $ciphertext = $cipher->encrypt($plaintext);
    my $output = MIME::Base64::encode_base64($ciphertext);

    return $output;
}

#==============================================================================
# Decrypt ciphertext encrypt by Encrypt and return the plaintext 

sub Decrypt {
    my ($ciphertext) = (@_);
    my $key = get_key(0);
    my $conf = $::o{'encryption'};
    
    if(not $key) {
        $::debugInfo{'key-error2'} = "Cannot get decryption key.\n" ; # KEYFILE=$conf->{'keyfile'}
        print STDERR  $::debugInfo{'key-error2'};
        return undef;
    }
    
    $ciphertext = MIME::Base64::decode_base64($ciphertext);
    
    my $cipher = Crypt::CBC->new( {'key'             => $key,
                                   'cipher'          => $conf->{'cipher'},
                                   'iv'              => '$KJh#(}q',
                                   'regenerate_key'  => 0,   # default true
                                   'padding'         => 'space',
                                   'prepend_iv'      => 0
                                   });    
    my $plaintext = $cipher->decrypt($ciphertext);

    return $plaintext;
}
#==============================================================================
1;
#==============================================================================
