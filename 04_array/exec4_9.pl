use strict;
use warnings;

my $myname = 'Shinnosuke Nohara';
my $mymsg  = 'Hello, how are you?';    # コンマを含んでいる
my $mytime = '2000-03-20';
&debug_print( $myname, $mymsg, $mytime );

$myname = &encode($myname);
$mymsg  = &encode($mymsg);
$mytime = &encode($mytime);
&debug_print( $myname, $mymsg, $mytime );

my $data = join( ',', $myname, $mymsg, $mytime );
print "\$data = $data\n";

( $myname, $mymsg, $mytime ) = split( /,/, $data );
$myname = &decode($myname);
$mymsg  = &decode($mymsg);
$mytime = &decode($mytime);
&debug_print( $myname, $mymsg, $mytime );

# コンマを &#44;に変換
sub encode {
    my $str = shift;
    $str =~ s/,/&#44;/g;
    return $str;
}

sub decode {
    my $str = shift;
    $str =~ s/&#44;/,/g;
    return $str;
}

sub debug_print {
    my ( $myname, $mymsg, $mytime ) = @_;
    print "\$myname=$myname\n";
    print "\$mymsg=$mymsg\n";
    print "\$mytime=$mytime\n";
}
