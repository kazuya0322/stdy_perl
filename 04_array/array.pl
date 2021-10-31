use strict;
use warnings;

#数値の配列を合計する
my @score = ( 30, 40, 50 );
print @score, "\n";
print "@score\n";

my $sum = 0;
foreach $_ (@score) {
    $sum += $_;
}
print '$sum=', $sum, "\n";

$sum = 0;
foreach (@score) {
    $sum += $_;
}
print '$sum=', $sum, "\n";

#文字の配列
my @word = ( "a", "b", "c", "d", "e" );
$word[5] = "f";
foreach  (@word) {
    print " " . $_;
}
print "\n";

@word = qw(a b c d e);
$word[5] = "f";
foreach my $item (@word) {
    print $item;
}
print "\n";
print @word, "\n";
print "@word\n"
