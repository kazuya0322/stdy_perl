use strict;
use warnings;

# 4-2
my $time = '01:23:45';
my ( $hour, $min, $sec ) = split( /:/, $time );
print "4-2 Ans.$hour時$min分$sec秒です。\n";

# 4-3
my @array = ( 1, 2, 3, 4, 5 );
my $index = 4;
if ( 0 <= $index and $index <= $#array ) {
    print "4-3(1):$array[$index]", "\n";
}
if ( 0 <= $index and $index <= scalar(@array) - 1 ) {
    print "4-3(2):$array[$index]", "\n";
}
if ( 0 <= $index and $index < @array ) {
    print "4-3(3):$array[$index]", "\n";
}

# 4-4
# (1) push(@array, $item);
my $item = 6;
push( @array, $item );
print "4-4(1):", @array, "\n";
splice( @array, @array, 0, 7 );
print "4-4(1):", @array, "\n";

# (2) $item = pop(@array);
$item = pop(@array);    #pop item=7
print $#array , "\n";

# $item = splice(@array,$#array); #pot item=6
$item = splice( @array, -1 );
print '4-4(2)@array:', @array, "\n";
print '4-4(2)$item:',  $item,  "\n";

# (3)
@array = ( 1, 2, 3, 4, 5 );

# $item = shift(@array);
$item = splice( @array, 0, 1 );
print '4-4(3)@array:', @array, "\n";
print '4-4(3)$item:',  $item,  "\n";

# (4)
@array = ( 2, 3, 4, 5 );

#unshift(@array, $item);
splice( @array, 0, 0, 1 );
print '4-4(4)@array:', @array, "\n";

# (5)
@array = ( 1, 2, 3, 4, 5 );
my $index = 1;
my $item  = 99;

#$array[$index] = $item;
splice( @array, $index, 1, $item );
print '4-4(5)@array:', @array, "\n";

# 4-5
my @word = qw(There's more than one way to do it.);

# $str1 を作る
my $str1 = '';
foreach my $word (@word) {
    $str1 .= "$word ";
}

# $str2 を作る
my $str2 = join( ' ', @word );

# 両方を表示する
print "\$str1= |$str1|\n";
print "\$str2= |$str2|\n";

# 両方を比べる
if ( $str1 eq $str2 ) {
    print "Same.\n";
}
else {
    print "Not same.\n";
}

# 4-6
my @info = (
    'hyuki@hyuki.com:Hiroshi Yuki:37',
    'hanako@hyuki.com:Hanako Sato:23',
    'tomura@hyuki.com:Tomura:22',
);

print "<html><table border = \"1\">\n";
foreach (@info) {
    my ($mail, $name, $age) = split(/:/, $_);
    print "<tr><td>";
    print join("</tr></td>" , $mail,$name,$age);
    print "</tr><td>\n";
}
print "</table></html>\n";

# 4-9 
my $myname ='kazuya';
my $mymsg ='Hello';
my $mytime ='14:25';
my $data ="$myname,$mymsg,$mytime";
print $data . "\n";

print join(',',$myname,$mymsg,$mytime) , "\n";
my ($myname , $mymsg,$mytime) = split(/,/,$data) , "\n";
print "\$myname=$myname\n";
print "\$mymsg=$mymsg\n";
print "\$mytime=$mytime\n";

