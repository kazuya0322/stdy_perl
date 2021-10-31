use strict;
use warnings;

# 変数を$priceに2000を代入し、表示する
my $price = 2000;
print $price;
print "\n";

# 変数discount_priceにpriceの1割引きを代入し、表示する。
my $discount_price;
$discount_price = $price * 0.9;
print $discount_price;
print "\n";

print "二重引用符で変数　$discount_price 表示\n";
print "\$discount_price = $discount_price \n";

# 10→16新数
my $value = 255;
my $str = sprintf('%x', $value);
print $str . "\n";

foreach my $value (0..255) {
    my $str = sprintf("%x" , $value);
    print $value , ' -> ' , $str , "\n";
}

# 16文字列を→10進数へ。
print "FF -> " , hex("ff") , "\n";
print "10 -> " , hex("10") , "\n";
print "10 -> " , hex(10) , "\n";

