use strict;
use warnings;

my @arr = ( 0, 1, 2, 3 );

print $arr[-4], "\n";

# print $arr[-5];

print $arr[$#arr], "\n";

if ( scalar(@arr) == 4 ) {
    print "配列の要素数は4です。\n";
}

#配列とリストに関する関数
# join (区切り文字列 , 配列やリスト)
# perldoc -f join
# perldoc perlfunc　組み込み関数の一覧
my @arr1    = ( 64, 90, 75 );
my $joinStr = join( ',', @arr1 ) . "\n";
print $joinStr;
print join( ',', ( 1, 2, 3, 4 ) ), "\n";

# split (/パターン/, 文字列)
my @splitstr = split( /,/, $joinStr ), "\n";
print $splitstr[0], "\n";

my $line1 = 'Hello, world!';
my @arr2  = split( //, $line1 );
print join( ':', @arr2 ), "\n";

# qqでダブルクォートで囲った文字列と同じ意味を表現できます。
# ダブルクォートはエスケープせずに使用することができます。
my $counter = 123;
foreach ( split( //, $counter ) ) {
    print qq|<img src="$_.gif">|;
}

my $anySpaceStr = '  green   red   yellow  ';
my @arr3        = split( /\s+/, $anySpaceStr );
print "@arr3\n";
print join( ':', @arr3 ), "\n";

foreach $_ (@arr3) {
    print $_ , "\n";
}
