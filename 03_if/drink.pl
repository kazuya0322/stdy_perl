use strict;
use warnings;

# List3-1

print "飲み物を選んでください。\n";
print "1:コーヒー\n";
print "2:オレンジジュース\n";
print "3:ウーロン茶\n";
my $line = <STDIN>;

if ($line == 1) {
    print "コーヒー\n";
} elsif ($line == 2){
    print "オレンジジュース\n";
} elsif ($line == 3){
    print "ウーロン茶\n";
} else {
    print "ありません。\n";
}

