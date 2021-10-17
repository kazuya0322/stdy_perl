use strict;
use warnings;

my $str = "defg";
print "\"abc\" $str\n";

my $str1 = "あいうえお";
my $str2 = "かきくけこ";

print "連結した文字列：$str1 $str2" . "\n";
print "連結した文字列：$str1" . " " . $str2 . "\n";

# You must write \" when you want a " in a string.【改行】
print "You must write \\\" when you want a \" in a string.\n";

