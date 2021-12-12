use strict;
use warnings;

sub funcOnlyArg {
    my $arg1 = shift;

    #    my $arg1 = shift @_; #shift と同義
    print '$arg1=', "$arg1\n";
    return;
}

sub add {
    my ( $arg1, $arg2 ) = @_;
    return $arg1 + $arg2;
}

sub search_file {
    my ( $file, @search_list ) = @_;
    print "$file ", join( ",", @search_list ) , "\n";
    return;
}
sub parse_file {
    my ( $in_file,  %opt )         = @_;
    my ( $out_file, $search_path ) = @opt{ 'out_file', 'search_path' };
    print "$in_file\n";
    return;
}


funcOnlyArg(123);
my $total = add( 123, 22 );
print "123+22 = $total\n";

search_file( 'file', 'apple', 'dog' );
parse_file( 'in_file', out_file => 'out_file', search_path => 'dir' );

