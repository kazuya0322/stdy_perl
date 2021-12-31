use strict;
use warnings;

# perl "c:\Users\takay\study\stdy_perl\11_file\list11_3.pl" > .\11_file\new.html
open( FILE, "11_file/file.html" ) or die "$!";
while ( my $line = <FILE> ) {
    $line =~ s/hyuki\@st\.rim\.or\.jp/hyuki\@hyuki.com/g;
    print $line;
}
close(FILE);
