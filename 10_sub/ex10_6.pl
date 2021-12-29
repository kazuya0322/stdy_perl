use strict;
use warnings;

my @date = &get_date;
print join( ',', @date ), "\n";

my $date = &get_date;
print $date, "\n";

sub get_date {
    my ( $sec, $min, $hour, $day, $mon, $year, $weekday ) = localtime();
    $year += 1900;
    $mon++;
    if (wantarray) {    #リストコンテキスト
        return ( $year, $mon, $day );
    }
    else {              #スカラーコンテキスト
        $mon = '0' . $mon if ( $mon < 10 );
        $day = '0' . $day if ( $day < 10 );
        return "$year-$mon-$day";
    }
}
