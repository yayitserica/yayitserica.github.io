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
# $Header: /home/cvs/webCal/webCal2/webcalContactDB_ldap.pm,v 1.1 2004/08/21 05:07:07 mzou Exp $
#

package webcalContactDB_ldap;

#==============================================================================
use strict;
use Net::LDAP;
#==================================================================================
sub ldap_connect {
    my $server = $ENV{'SERVER_NAME'};
    if( not $webcalContactDB_ldap::ldap_connections{$server}) {
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
            $webcalContactDB_ldap::ldap_connections{$server} = $ldap;
        }
    }
    return $webcalContactDB_ldap::ldap_connections{$server};
}
#==================================================================================
# 
# The next function, if defined, will be invoked to list all email addresses
#

sub LoadAddressBook {
    my ($arg) = (@_);
    my ($filter, $ldap, $i, $total, @attr);
    my $server = $ENV{'SERVER_NAME'};
    my $conf = $::o{'ldap_conf'};
    my $fields = $conf->{'user_search_fields'};
    if($ENV{'MOD_PERL'} and $::cached_addressbook{$server}) {
        my $time = time();
        my $age = $time - $::cached_addressbook_timestamp{$server}; 
        if($age < 3600) {
            @::addressbook=();
	    my $ref = $::cached_addressbook{$server};
            @::addressbook = (@$ref);
            $total = scalar @::addressbook;
            return $total;
        }
    }
    if(!$arg) { $arg="*";}
    $total=0; 
    $filter=""; for $i (@$fields) { $filter .= "($i=$arg)";}
    $filter = '(|' . $filter . ')';
    @attr = (@{$fields}, 'telephoneNumber', 'facsimileTelephoneNumber', 'labeledURI');
    $ldap = &ldap_connect();
    if($ldap) {
        my $s_opts = $conf->{'search_options'};
        my $result = $ldap->search(@{$s_opts}, filter => "$filter", attr=> \@attr);
        my $errcode = $result->code();
        if($errcode and $errcode != 4) { return 0;}
        $total = $result->count;
        if(not $total) { return 0;}
        my @cache=(); @::addressbook=();
        my %thash=(); 
        $i=0;
        while( $i< $total ) {
            my $hash={};
            my $entry = $result->entry($i);  $i++;
            my ($cn, $sn, $email, $phone, $fax, $URI, $tmp, $k);
            $cn = $entry->get_value('cn'); $hash->{'fname'} = $cn if $cn;
            $email = $entry->get_value('mail'); $hash->{'email'} = $email if $email;
            $phone= $entry->get_value('telephoneNumber'); $hash->{'phone'} = $phone if $phone;
            $fax= $entry->get_value('facsimileTelephoneNumber'); $hash->{'fax'} = $fax if $fax;
            $URI= $entry->get_value('labeledURI'); $hash->{'hpage'} = $URI if $URI;
            $hash->{'tag'} = $i;
            $sn = $entry->get_value('sn'); $sn=$cn if not $sn;
            $k = uc($sn) . $i;
	    $thash{$k} = $hash;
        }
        if($ENV{'MOD_PERL'}) { 
            for $i (sort (keys %thash)) { my $v = $thash{$i}; push @cache, $v;}
            @::addressbook = (@cache);
            $::cached_addressbook{$server} = \@cache;
            $::cached_addressbook_timestamp{$server} = time();
        } else {
            for $i (sort (keys %thash)) { my $v = $thash{$i}; push @::addressbook, $v;}
        }
    }    
    return $total;
}

#==============================================================================
1;
#==============================================================================
