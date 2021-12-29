use strict;
use warnings;

my @data = ('How','I','wonder','what','you','are.','');
print join(',' , &get_length_list(@data)), "\n";

sub get_length_list {

    my @length=();
    foreach (@_) {
        push(@length,length($_));
    }

    return @length;
}
