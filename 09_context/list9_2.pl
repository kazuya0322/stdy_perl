use strict;
use warnings;

# サブルーチンで呼び出しコンテキストを知る

&check_context;                 #無効コンテキストで呼び出す
my @array = &check_context;     #リストコンテキスト
my $scalar = &check_context;

sub check_context {
    unless (defined(wantarray)){
        print '無効コンテキスト' , "\n";
    } elsif (wantarray) {
        print 'リストコンテキスト' , "\n";
    } else {
        print 'スカラーコンテキスト' , "\n";
    }

}