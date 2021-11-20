use strict;
use warnings;

while ( my $str = <STDIN> ) {
    chomp($str);
    last if ( $str eq 'end' );
#    if ( $str =~ /point\w/ ) {   #メタ文字
    # if ( $str =~ /point[^a-z^A-Z]/ ) {
    if ( $str =~ /^point[^5\D]$/ ) {  # 後ろの\Dも否定になってつまり数字。5じゃない数字1文字。
    # if ( $str =~ /^point[\D]$/ ) {
        print "$& --- Match\n";
    }
    else {
        print "No Match\n";
    }

}
