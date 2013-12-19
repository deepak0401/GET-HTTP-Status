# Developed by Deepak Mourya, Information Security Consultant

use LWP::Simple;
use IO::File;
use IO::Handle;
use LWP::UserAgent;


$filename = 'url.txt';
chomp $filename;
open FILE,"<$filename" or die "Cannot read the file $filename: $!\n";

while($url1 = <FILE>)
{
	my $browser = LWP::UserAgent->new;
	$url='http://'.$url1;
	$response = $browser->get($url);
	print "\n\n====".$url."\nResponse Code: ".$response->status_line()."\n";
	$url='https://'.$url1;
	$response = $browser->get($url);
	print "\n\n====".$url."\nResponse Code: ".$response->status_line()."\n";
}
