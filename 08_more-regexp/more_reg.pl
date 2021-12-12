use strict;
use warnings;

#########################################
# 覚えきれないからメモ
# 1.メタ文字
#  .  : 任意の1文字にマッチする
#  ?  : 直前にあるものがあってもなくてもよいことをあらわす
#  *  : 直前のものが0回以上繰り返したパターンをあらわす(={0,})
#  +  : 直前のものが1回以上繰り返したパターンをあらわす(={1,})
#  {2,4} :直前のものが2回以上4回以下繰り返したパターンをあらわす
#  |  : いくつかのパターンから1つを選択することをあらわす
#
# 2.文字クラス[] []の中にマッチさせたい文字の「集合」書き並べる
#  [0-9][0123456789]　：0~9の何れか1文字にマッチするパターン(=メタ文字\d)
#  [a-zA-Z0-9_]　: 英小文字、英大文字、数字、アンダースコアのいずれか1文字にマッチするパターン(\w)
#　[^0-9] : 否定文字クラス(補集合)。0-9の何れか１文字にマッチしないパターン(=メタ文字\D)
#
# 3.()は、中身はひとまとまりのものとして扱う
#
#########################################

my $str = 'The price is 300yen.';
my $number;
my $price;
if ( $str =~ /\d+/ ) {
    $number = $&;
    print "$number is the number.\n";
}
if ( $str =~ /\d+[A-Za-z]+/ ) {
    $price = $&;
    print "$price is the price.\n";
}
print "\$number = $number\n";
print "\$price  = $price\n";

my $str2 = "reshape";
chomp($str2);
if ( $str2 =~ /^(re)?shape/ ) { #正規表現は()はひとまとまりとして扱う。メタ文字?は直前のreの2文字があってもなくてもよい。
    print "match\n";
}

# matchしたものが、$1,$2,$3,・・・
my $str3 = '168,57,37';
if ( $str3 =~ /(\d+),(\d+),(\d+)/ ) {
    my ( $height, $weight, $age ) = ( $1, $2, $3 );
    print "$1 $2 $3\n";
}
my @str3 = split( /,/, $str3 );
print $str3[1], "\n";

my $str4 = 'The price is 300yen. The distance is 120km.';
if ( $str4 =~ /((\d+)([A-Za-z]+))/ ) {
    print "str4 : $& $1 $2 $3\n";
}
while ( $str4 =~ /((\d+)([A-Za-z]+))/g ) {
    print "str4(while) : $& $1 $2 $3\n";
}

# \1
my $str5 = 'see';
my $vowel = '[aeiou]';
my $cons = '[bcdfghjklmnpqrstvwxyz]';
if($str5 =~ /$cons($vowel)\1/){   #\1には、()でくくられた部分にマッチした文字列がセットされる
    print "match\n";
}
