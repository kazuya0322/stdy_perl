use strict;
use warnings;

# 環境変数の表示

foreach ( keys %ENV ) {
    print "#$_ → $ENV{$_}\n";
}
