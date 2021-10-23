use strict;
use warnings;

print "暗証番号を入力してください。\n";
my $line = <STDIN>;

chomp($line); #改行を取り除く(標準入力から最後の改行を除く。チョンプと読むよ)

if($line eq "3014") {   # eqは両辺を文字列として比較します。数の比較の==と似ています。
    print "金庫が開きました。\n";
} else {
    print "暗証番号が違います\n";
}
