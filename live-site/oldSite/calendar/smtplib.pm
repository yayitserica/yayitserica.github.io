#!/usr/bin/perl -w
#
# $Header: /home/cvs/webCal/webCal2/smtplib.pm,v 1.11 2003/11/21 15:06:10 mzou Exp $
#

package smtplib;

use Socket;
use POSIX;
#--------------------------------------------------------------------------------
# NOTE: this script is not needed if you run sendmail on your web Server. See
#       webcalConfig for instructions.
#--------------------------------------------------------------------------------

sub SmtpSendMail {
    my ($fromuser, $fromsmtp, $touser, $tosmtp, $subject, $messagebody, $cc, $bcc) = (@_);
    my ($ipaddress, $fullipaddress, $packconnectip);
    my ($packthishostip);
    my ($AF_INET, $SOCK_STREAM);
    my ($PROTOCOL, $SMTP_PORT);
    my ($buf);

    my $datetime=&formatdatetime;
    my $message = "Subject: $subject\015\012";
    if($cc) { $message .= "Cc: $cc\015\012"; }
    $message .= "Date: $datetime\015\012" . $messagebody ;
    
    $AF_INET = AF_INET;
    $SOCK_STREAM = SOCK_STREAM;

    $PROTOCOL = (getprotobyname('tcp'))[2];
    $SMTP_PORT = (getservbyname('smtp','tcp'))[2];

    $SMTP_PORT = 25 unless ($SMTP_PORT =~ /^\d+$/);
    $PROTOCOL = 6 unless ($PROTOCOL =~ /^\d+$/);

    $fullipaddress = inet_aton($tosmtp);
    $packconnectip = sockaddr_in($SMTP_PORT, $fullipaddress);

    if(! socket (S, $AF_INET, $SOCK_STREAM, $PROTOCOL) ) { return (-1, "Can not make socket:$!\n");}
    if(! connect(S, $packconnectip)) {return (-3, "Can't connect socket:$!\n");}
    
    select(S);
    $| = 1;
    select (STDOUT);

    $buf = read_sock(S, 6);

    print S "HELO $fromsmtp\015\012";

    $buf = read_sock(S, 6);

    print S "MAIL From:<$fromuser>\015\012";
    $buf = read_sock(S, 6);

    my ($addr, @recipents);
    @recipents = split(/[, ]+/, $touser);
    for $addr (@recipents) { print S "RCPT To:<$addr>\015\012";  $buf = read_sock(S, 6); }
    if($cc) {
	@recipents = split(/[, ]+/, $cc);
	for $addr (@recipents) { print S "RCPT To:<$addr>\015\012";  $buf = read_sock(S, 6); }
    }
    if($bcc) {
	@recipents = split(/[, ]+/, $bcc);
	for $addr (@recipents) { print S "RCPT To:<$addr>\015\012";  $buf = read_sock(S, 6); }
    }
    print S "DATA\015\012";
    $buf = read_sock(S, 6);

    print S $message . "\015\012.\015\012";

    $buf = read_sock(S, 6);

    print S "QUIT\015\012";

    shutdown(S,2);

    return (0, "");
}
#--------------------------------------------------------------------------------

sub read_sock {
    #
    # $handle:  Handle to an allocated Socket
    # $endtime = amount of time read_sock is allowed to
    #                wait for input before timing out
    #                (measured in seconds)
    #
    #  return buffer containing what was read from the socket
    # 
    my ($handle, $endtime) = (@_);
    my ($localbuf,$buf);
    my ($rin,$rout,$nfound);

    $endtime += time;

    $buf = "";

    $rin = '';
    vec($rin, fileno($handle), 1) = 1;

    $nfound = 0;

  read_socket: 
    while (($endtime > time) && ($nfound <= 0)) {
	$length = 1024;
	$localbuf = " " x 1025;
	$nfound = 1;
        if( $ !~ m/MSWin|NT/i ) { # NT does not support select for polling to see if there are characters to be received.
	    $nfound = select($rout=$rin, undef, undef,.2);
	}
    }
    # If we found something in the read socket, we should
    # get it using sysread.
    if ($nfound > 0) {
	$length = sysread($handle, $localbuf, 1024);
	if ($length > 0) {
	    $buf .= $localbuf;
	}
    }
    return $buf;
}
#--------------------------------------------------------------------------------
sub formatdatetime {
    my $zone = strftime "%z", localtime;
    my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime(time);
    my @mons  = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
    my @wdays = qw(Sun Mon Tue Wed Thu Fri Sat);
    $mon = $mons[$mon];
    $wdays = $wdays[$wday];
    $year +=  1900;
    $mday = sprintf("%02d", $mday);
    my $time = sprintf("%02d:%02d:%02d", $hour,$min,$sec);
    return "$wday, $mday $mon $year $time $zone";
}
#--------------------------------------------------------------------------------

1;

