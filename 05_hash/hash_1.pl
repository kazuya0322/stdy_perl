use strict;
use warnings;

my %uniq;
my @array = ( 3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5 );
foreach (@array) {
    $uniq{$_} = 1;   #value はなんでもいい
}
my @uniqarray = keys(%uniq);
print sort(@uniqarray) , "\n";
