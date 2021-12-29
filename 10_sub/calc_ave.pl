use strict;
use warnings;

sub calc_average3 {
    my ( $x, $y, $z ) = @_;
    return ( $x + $y + $z ) / @_;
}

print &calc_average3( 50, 100, 60 ), "\n";

sub calc_average {
    unless (@_) {
        warn "&calc_average: no argument is given.\n";
        return 0;
    }
    my $total = 0;
    foreach (@_) {
        $total += $_;
    }
    return $total / @_;
}

print &calc_average( 50, 100 ), "\n";
print &calc_average( 50, 100, 60 ), "\n";
print &calc_average( 50, 100, 60, 40, 25, 38, 72, 50, 100, 30 ), "\n";
print &calc_average(), "\n";
