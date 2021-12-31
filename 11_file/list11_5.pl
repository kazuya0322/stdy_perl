use strict;
use warnings;

# 同じファイルを書き換える
open( FILE, "11_file/file.html" ) or die "$!";
my @file = <FILE>;
close(FILE);
foreach my $line (@file) {
    $line =~ s/hyuki\@st\.rim\.or\.jp/hyuki\@hyuki.com/g;
}
open( NEWFILE, "> 11_file/file.html" ) or die "$!";
print NEWFILE @file;
close(NEWFILE);
