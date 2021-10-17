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

# substr 置換
my $str = "Programming Lesson is fun!";
my $s = substr($str , 12 , 6 , "Perl");
print "\$str = $str\n";
print "\$s = $s\n";

# index,rindex 全角は3index分、なんだ、、処理系にもよるのか？
print index("Programming Lesson","ing") , "\n";
print index("あいうえおあ","あ"), "\n";
print rindex("あいうえおあ","あ"), "\n";
print rindex("あaいうえおあa","a"), "\n";

# 文字列置換 s///    どうやら先頭から最初にマッチしたものだけ置換されるらしい。詳しくは7章（=~、s///)
my $str = "Programming Lesson is fun!Lesson";
$str =~ s/Lesson/Perl/;
print "\$str = $str\n";
