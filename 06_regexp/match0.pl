use strict;
use warnings;

while ( my $str = <STDIN> ) {
    chomp($str);
    last if ( $str eq 'end' );

    if ( $str =~ /yes$/ ) {
        print "Match!\n";
    }
    else {
        print "No Match!\n";
    }
}
