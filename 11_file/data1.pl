use strict;
use warnings;

# コンマ区切りの数値を集計する

if ( @ARGV == 0 ) {
    print "Usage: perl data1.pl filename\n";
    exit;
}
my $filename = shift(@ARGV);
open( FILE, $filename ) or die "$!";
my @file = <FILE>;
close(FILE);

foreach my $line ( sort @file ) {
    my ( $yomi, $name, @score ) = split( /,/, $line );
    my $sum = 0;
    foreach my $score (@score) {
        $sum += $score;
    }
    print $name, "\t", sprintf( "%3d", $sum ), "\n";
}
