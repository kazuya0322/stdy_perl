use strict;
use warnings;

open( FILE, "<", '11_file/file.txt' ) or die "$!";
while ( my $line = <FILE> ) {
    print "berfore:$line";
    $line =~ s/ /_/g;
    print "after  :$line";
}
close(FILE);
