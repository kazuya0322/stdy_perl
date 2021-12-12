use strict;
use warnings;

my @city = ("東京", "大阪", "名古屋");
&dispArrayValue(@city);

my @rcity = reverse(@city);
&dispArrayValue(@rcity);

sub dispArrayValue{
  my @array = @_;

  print "配列の要素を出力します\n";
  foreach my $var(@array){
    print "$var\n";
  }
}