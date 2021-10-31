use strict;
use warnings;

my ($sec, $min, $hour) = localtime();

if ($hour < 10) {
    print 'おはようございます。';
    print '今は', $hour , '時です。';
    print '眠くないですか。';
} elsif($hour < 12 and $hour > 10) {
    print '10-12時の間です。' , $hour ,  '時です。';
} else {
    print '午後です。', $hour ,'です。';
}

unless ($hour==12){
    print '正午ではありません。';
}

if (not $hour==12){
    print '正午ではありません。';
}

if ($hour!=12){
    print '正午ではありません。';
}


