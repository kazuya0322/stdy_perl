use strict;
use warnings;

# Perlにおける文脈（コンテキスト）について
#  コンテキストとは何か
#  スカラーコンテキスト
#  リストコンテキスト
#  コンテキストに関する実例集


# スカラー変数へ代入演算時=を使って代入するとき
# 代入演算子の右辺は、スカラーコンテキスト(scalar context)で評価される
my $scalar;
$scalar = 123;
$scalar = localtime();
print($scalar,"\n");

# 同じlocaltime()でもリストコンテクストで評価されると結果が違う
# 代入があったとき右辺だけ見ていても分からない
################################################################
# my $scalar = 式;     式はスカラーコンテキストで評価
# my @list   = 式;     式はリストコンテキストで評価
################################################################
my @list;
@list = localtime();
print(@list , "\n");
foreach my $item (@list) {
    print("$item\n");
}
print("関数scalarでスカラーコンテキストで評価＝");
print(scalar(localtime()), "\n");
print(my $x = localtime(), "\n");
print("" . localtime(), "\n");

