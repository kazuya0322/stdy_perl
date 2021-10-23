use strict;
use warnings;

my $line = <STDIN>;
chomp($line);

if ($line =~ /^\d+$/) {
    print "「$line」は数字列です。\n";
} else {
    print "「$line」は数字列ではありません。\n";
}