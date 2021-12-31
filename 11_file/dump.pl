use strict;
use warnings;

# ファイルをバイナリモードで取り扱う

if ( @ARGV == 0 ) {
    print "Usage: perl dump.pl filename\n";
    exit;
}

my $filename = shift(@ARGV);
open( FILE, $filename ) or die "$!";
binmode(FILE);

my $count;
while(defined(my $char = getc(FILE))){
    printf("%08X : ", $count) if ($count % 16 == 0);
    printf("%02X : ", ord($char));
    printf("- ") if($count % 16 == 7);
    printf("\n") if($count % 16 == 15);
    $count++;
}
close(FILE);
