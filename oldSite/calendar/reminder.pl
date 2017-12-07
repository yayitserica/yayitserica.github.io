#!/usr/bin/perl -w
#
# $Header: /home/cvs/webCal/webCal2/reminder.pl,v 1.2 2003/06/27 20:09:04 mzou Exp $
#

use strict;
use LWP;
use HTTP::Request::Common;
use Getopt::Long;
use Time::Local;

my @popup = ('xmessage', "-geometry", "+0+0");
#---------------------------------------------------------------------------------------------
#
# This file implement a reminder client. It connect to webcal server periodically
# and popup a reminder window whenever needed.
#
# This script performs a CGI FORM Post. You need LWP module to run it. 
#
#---------------------------------------------------------------------------------------------

if(1) {
    # calendar_server_url
    #
    # my $calendar_server = "http://192.168.7.1/a/webcal_add_server.pl";
    #
    my $calendar_server = "";
    #
    #
    my $username = '';
    my $password = '';
    my $command ='remind';
    my $html='';
    my $help ='';
#---------------------------------------------------------------------------------------------
    my $RCFILE = "$ENV{'HOME'}/.webcalrc";
    if( -f $RCFILE and open(FILERC, "<$RCFILE")) {
	my($k, $v);
	while(<FILERC>) {
	    chop; next if not $_ or /^\s+$/;
	    ($k,$v) = split(/:/, $_, 2);
	    $k=~ s/^\s+//g; $k=~ s/\s+$//g;	$v=~ s/^\s+//g; $v=~ s/\s+$//g;
	    if($k =~ /server/i) { $calendar_server = $v;}
	    elsif($k =~ /^user/i) { $username = $v;}
	    elsif($k =~ /^pass/i) { $password = $v;}
	}
	close FILERC;
    }
#---------------------------------------------------------------------------------------------
    GetOptions('username=s' => \$username,     'u=s' => \$username, 
	       'password=s' => \$password,     'p=s' => \$password, 
	       'html'=>\$html, 'help'=>\$help,
	       );
#---------------------------------------------------------------------------------------------
    if($help) {
	print STDERR "\nUsage:\n";
	print STDERR  "$0 -username USERNAME -password PASSWORD \n";
	print STDERR  "\t -server URI_OF_YOUR_WEBCAL_CMD_SERVER\n";
	print STDERR  "\t [ -help | -h ] \n";
	exit 0;
    }

    while( !$calendar_server or $calendar_server !~ /^http/i ) {
	print STDERR  "Enter URL of your webcal_cmd_server: "; chop($calendar_server=<>);
    }

    if( !$username ) { 
	print STDERR  "Enter username: ";    chop($username = <>); 
    }
    if( !$password)  {
	print  STDERR  "Enter password: ";
	if($ !~ m/MSWin|NT/i) {`stty -echo`;}
	chop($password = <>);
	if($ !~ m/MSWin|NT/i) {`stty echo`;}
	print "\n";
    }   

#---------------------------------------------------------------------------------------------
#
# build post request content
#
    my $postcontent = [ username        => $username,
			password        => $password,
			command         => $command,
			];

#---------------------------------------------------------------------------------------------
# Now post the form
#
    
    while(1) {
	my $ua = LWP::UserAgent->new;
	my $request = POST( $calendar_server,
			    Content_Type => 'form-data',
			    Content => $postcontent,
			    );
	my $response = $ua->request($request);

	die $response->message unless $response->is_success;
        #---------------------------------------------------------------------------------------------
        # parse response from the server
        #
	my $content = $response->content;
	$_ = $content;
	
	$content =~ s/\"/\\\"/g; #"
	if($content =~ /reminder/i) { popup_reminder($content);}
	sleep(300);
    }
    exit 0;
}
#===================================================================================
sub popup_reminder {
    my ($message) = (@_);
    system( @popup, "$message");
}
#===================================================================================
