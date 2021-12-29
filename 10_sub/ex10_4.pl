use strict;
use warnings;

print &factorial(-1) , "\n";
for (my $n = 0; $n <10; $n++){
    print &factorial($n), "\n";
}
print &factorial(10.5) , "\n";

sub factorial {
    my $var = int(shift(@_));
    # print "\$var=$var\n";

    if ($var < 0) {
        return 0;
    } elsif ($var == 0) {
        return 1;
    } else {
        #n!
        my $f = 1;
        for(my $i = 1; $i<=$var; $i++){
            $f *= $i;
        } 
        return $f;
    }

}