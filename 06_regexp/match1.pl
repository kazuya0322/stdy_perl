use strict;
use warnings;

while ( my $str = <STDIN> ) {
    chomp($str);
    last if ( $str eq 'end' );
    # if ( $str =~ /ca..s/ ) {         #文字クラス
    # if ( $str =~ /point[0-9]/ ) {    #文字クラス
    if ( $str =~ /point\d/ ) {         #メタ文字
        print "$& --- Match\n";
    }
    else {
        print "No Match\n";
    }

}
