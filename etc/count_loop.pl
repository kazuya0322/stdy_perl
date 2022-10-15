use strict;
use warnings;
use File::Copy qw/copy move/;

##
# COBOLソースコードの多重ループのあるファイルをカウントする
#
# 入力：COBOLソースのフォルダ
# 出力：ファイル
#       ファイル名,ループの数,多重ループの数,多重度1の数,多重度2の数,多重度3の数,多重度4以上の数
#       該当箇所のソース行
#       例)
#       ABC1_1.cbl,1
#       000130     PERFORM  UNTIL  WRK-COUNTER  >  10,1
#       ABC_1_2.cbl,2
#       000130     PERFORM  UNTIL  WRK-COUNTER  >  10,1
#       000170     PERFORM  UNTIL  WRK-COUNTER  >  10,1
#       ABC_2_2.cbl,4
#       000130     PERFORM  UNTIL  WRK-COUNTER  >  10,1
#       000141         PERFORM PERFORM  100 TIMES,2
#       000170     PERFORM  UNTIL  WRK-COUNTER  >  10,1
#       000190         PERFORM PERFORM  100 TIMES,2
#       DEF1_1.cbl,1
#       000130     PERFORM  100 TIMES,1
#       GHIJ1_1.cbl,1
#       000130     PERFORM VARYING X FROM 1 BY 1,1
#
# 1.引数の検査をする
# 2.フォルダをオープンする
# 3.サブフォルダは、再帰で処理。ファイルは中身を処理。
# 4.フォルダ中のファイルを1件づつ開く。
# 5.ファイルを1行づつ操作し、
#     ^[0-9]{6}[^D*-]\s*PERFORM\s+.*(UNTIL|TIMES|VARYING)  にマッチしたらループカウント++,多重ループカウント++
#     END-PERFORMがみつかったら、多重ループカウント--
#     ^[0-9]{6}[^D*-]\s*END-PERFORM
#
##

# if ( @ARGV == 0 ) {
#     print "Usage: perl data0.pl dirname\n";
#     exit;
# }
move('.\result.txt','.\result.txt.bak');
unlink('.\result.txt');
&traverse();

sub traverse {

    #    my $dirname = shift(@ARGV);
    my $dirname = 'C:\Users\takay\study\stdy_perl\etc\COBOL';
    my $delim   = '/';
    opendir( DIR, $dirname ) or die "$dirname: $!";
    foreach my $entry ( readdir(DIR) ) {
        next if ( $entry eq '.' );
        next if ( $entry eq '..' );
        if ( $dirname =~ /[\/\\]$/ ) {
            $delim = '';
        }
        my $filename = "$dirname$delim$entry";
        if ( -d $filename ) {
            &traverse($filename);
        }
        else {
            #print $filename, "\n";

            &do_file($filename);
        }
    }
    closedir(DIR);
}

sub do_file {
    my $filename = shift;
    return unless ( $filename =~ /\.cbl$/ );
    open( FILE, "<$filename" ) or die "$filename: $!";

    # my @file = <FILE>;
    # close(FILE);
    # foreach (@file) {
    #     s|置換前|置換後|g;
    # }
    my $output_text;
    my $output_line;
    my $loop_cnt = 0;
    my $multi_loop = 0;
    my @lines;
    my $chomp_line;
    while ( my $line = <FILE> ) {
        if ( $line =~ /^[0-9]{6}[^D*-]\s*PERFORM\s+.*(UNTIL|TIMES|VARYING)/ ) {
            $loop_cnt += 1;
            $multi_loop += 1;
            $line =~ s/\r//;
            $line =~ s/\n//;
            push( @lines, "$line,$multi_loop\n" );
        }
        if ( $line =~ /^[0-9]{6}[^D*-]\s*END-PERFORM/ ) {
            $multi_loop -= 1 ;
        }

    }
    $output_text = join( ",",  $filename, $loop_cnt );
    $output_line = join( "", @lines );

    #    open(NEWFILE, "> $filename") or die "$filename: $!";
    #   print NEWFILE @file;
    open( NEWFILE, '>> .\result.txt' ) or die "$!";
    print NEWFILE $output_text, "\n", $output_line;

    close(NEWFILE);
}
