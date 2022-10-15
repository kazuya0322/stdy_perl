use strict;
use warnings;

# カレントディレクトリのファイル一覧

my $dirname = '.';
opendir(DIR, $dirname) or die "$dirname: $!";
while(my $dir = readdir(DIR)){
    print $dir, "\n";
}
close(DIR);


# オープン　open(FILE, $filename);    opendir(DIR, $dirname);
# 読み込み  $line = <FILE>;           $dir = readdir(DIR);
#          @lines = <FILE>;          @dirs = readdir(DIR);
# クローズ  close(FILE);              closedir(DIR);
# 削除      unlink($filename);        rmdir(DIR);