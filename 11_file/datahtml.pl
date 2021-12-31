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

print "<html>\n";
print '<h1>点数表</h1>', "\n"; # S-JISだと「表」の２バイト目が\という文字と同じコードとなる。エスケープシーケンスと誤解される場合があるので、''が無難
print qq|<table border="1">\n|; #htmlには、""がよくでるので、エスケープシーエンス生じる。qq使おう！

foreach my $line ( sort @file ) {
    chomp($line);
    my ( $yomi, $name, @score ) = split( /,/, $line );
    my $sum = 0;
    foreach my $score (@score) {
        $sum += $score;
    }
    print "<tr>";
    print "<td>$name</td>";
    print qq|<td align="right">|,
      join( qq|</td><td align="right">|, @score, $sum );
    print "</td>";
    print "</tr>\n";
}
print "</table>";
print "</html>";
