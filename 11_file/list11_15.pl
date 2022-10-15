use strict;
use warnings;

#&traverse('.');
&traverse('C:/Users/takay/study/stdy_perl/subdirtest/');

sub traverse {
    my $dirname = shift;
    my $delim   = '/';
    opendir( DIR, $dirname ) or die "$dirname : $!";
    foreach my $entry ( readdir(DIR) ) {
        next if ( $entry eq '.' );
        next if ( $entry eq '..' );
        next if ( $entry =~ /^\./ );    # .git/.vscodeを除外
        if ( $dirname =~ /[\/\\]$/ ) {
            $delim = '';
        }
        my $filename = "$dirname$delim$entry";
        if ( -d $filename ) {
            &traverse($filename);
        }
        else {
            &do_file($filename);
        }
    }

    #    print $dirname , "\n";
    closedir(DIR);
}

sub do_file {
    my $filename = shift;
    return unless ( $filename =~ /\.html?$/ );
    print $filename , "\n";
    open( FILE, $filename );
    my @file = <FILE>;
    close(FILE);
    foreach (@file) {
        s|hyuki\@st\.rim\.or\.jp|hyuki\@hyuki.com|g;
    }
    open( NEWFILE, "> $filename" ) or die "$filename : $!";
    print NEWFILE @file;
    close(NEWFILE);
}
