#!/usr/bin/perl -w 
if (@ARGV)
{
	@file_list = @ARGV;
} 
else 
{
	print(“ERROR: no args\n”);
	exit 1;
} 
foreach (@file_list)
{ 
	DO THE STUFF HERE
} 

print "complete all deletions? [y]: ";
$input = <STDIN>;  

DO THE STUFF HERE

exit 0;