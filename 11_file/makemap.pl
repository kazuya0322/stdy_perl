use strict;
use warnings;

print "<html>\n";
&traverse_html(".");
print "</html>\n";

sub traverse_html {
    my $dirname = shift;
    my $delim = '/';

    if ($dirname =~ /[\/\\]$/){
        $delim = '';
    }
    print "<ul>\n";
    opendir(DIR, $dirname) or die "$dirname: $!";
    foreach my $entry (readdir(DIR)){
        next if ($entry eq '.');
        next if ($entry eq '..');
        next if ($entry eq '.git' or $entry eq '.vscode');
        my $filename = "$dirname$delim$entry";
        if (-d $filename){
            print "<li>$entry\n";
            &traverse_html($filename);
        } else {
            &do_html($filename, $entry);
        }
    }
    closedir(DIR);
    print "</ul>\n";
}

sub do_html {
    my ($filename, $entry) = @_;
    return unless ($filename =~ /\.html?$/);
    open(FILE, $filename) or die "$filename: $!";
    my $file = join('',<FILE>);
    close(FILE);
    my $title;
    if($file =~ m|<title>(.:?)</title>|si){
        $title = $1;
        $title =~ s/[\r\n]//g;
    } else {
        $title = $entry;
    }
    print qq|<li><a href="$filename">$title</a>\n|;
}
