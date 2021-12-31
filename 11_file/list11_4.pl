use strict;
use warnings;


open( FILE, "11_file/file.html" ) or die "$!";
#open( NEWFILE, "> 11_file/new.html" ) or die "$!";
open( NEWFILE, ">-" ) or die "$!";
while ( my $line = <FILE> ) {
    $line =~ s/hyuki\@st\.rim\.or\.jp/hyuki\@hyuki.com/g;
    print NEWFILE $line;
}
close(NEWFILE);
close(FILE);
