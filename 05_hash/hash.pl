use strict;
use warnings;

# $hash{key} = value;
# $array[index] = value;

my %hash = (
    '結城浩'   => 36,
    '佐藤花子'  => 22,
    'とむら'   => 21,
    '高橋マモル' => 22,
);

foreach my $key ( keys(%hash) ) {
    my $value = $hash{$key};
    print "$key -> $value\n";
}
print "\n";

$hash{'田中'}  = 54;
$hash{'結城浩'} = 37;
foreach ( keys(%hash) ) {
    print "$_ -> $hash{$_}\n";
}
print "\n";

# hash sort by key
foreach(sort(keys(%hash))){
    print "$_ -> $hash{$_}\n";
}
print "\n";

# hash sort by value
foreach(sort { $hash{$a} <=> $hash{$b}} keys %hash ) {
print "$_ -> $hash{$_}\n";
}
print "\n";

