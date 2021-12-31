use strict;
use warnings;

# コンマ区切りの数値を集計する

if ( @ARGV == 0 ) {
    print "Usage: perl data0.pl filename\n";
    exit;
}
my $filename = shift(@ARGV);
open( FILE, $filename ) or die "$!";

while ( my $line = <FILE> ) {
    my ( $yomi, $name, @score ) = split( /,/, $line );
    my $sum = 0;
    foreach my $score (@score) {
        $sum += $score;
    }
    print $name, "\t", $sum, "\n";
}
close(FILE);
