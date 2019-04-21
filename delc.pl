#!/usr/bin/perl -w

if (@ARGV) {
    @file_list = @ARGV;
} 
else {
    print "ERROR: no args\n";
    exit 1;
} 

sub prompt {
    my ($query) = @_;
    print $query;
    chomp(my $answer = <STDIN>);
    return lc($answer) eq 'y';
}

@files_to_delete = ();
foreach $file(@file_list) {
    if (prompt("delete $file? [y]: ")) {
        push @files_to_delete, $file;
    }
} 

if (prompt("complete all deletions? [y]: ")) {
	unlink @files_to_delete;
}

exit 0;