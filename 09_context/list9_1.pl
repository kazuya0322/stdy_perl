use strict;
use warnings;

## 数字と数値
sub get_date_string {
    my @week = ( 'sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' );
    my ( $sec, $min, $hour, $day, $mon, $year, $weekday ) = localtime();

    $year += 1900;
    $mon++;
    $mon  = '0' . $mon  if ( $mon < 10 );
    $day  = '0' . $day  if ( $day < 10 );
    $hour = '0' . $hour if ( $hour < 10 );
    $min  = '0' . $min  if ( $min < 10 );
    $sec  = '0' . $sec  if ( $sec < 10 );
    return "$year-$mon-$day ($week[$weekday]) $hour:$min:$sec";
}

print &get_date_string, "\n";
