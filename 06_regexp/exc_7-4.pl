use strict;
use warnings;

my @rhymes = (
    "Humpty Dumpty sat on a wall,",
    "Humpty Dumpty had a great fall",
    "All the King's horses, and all the king's men",
    "Cannot put Humpty Dumpty together again.",
);

# 上記の文字列の配列を元に、単語の頻出表を作成する。
# notice
#   大文字小文字は無視
#   king'sなど'ははいる
#   昇順で出力

my %count;
foreach my $line (@rhymes) {
    my @word = split( /[^\w']+/, lc($line) );
    foreach my $word (@word) {
        $count{$word}++;
    }
}
foreach my $key ( sort keys %count ) {
    print "$key $count{$key}\n";
}
