#!/usr/bin/perl -w
use strict;
use Switch;

unless (-e $ARGV[-1]) { die "invalid input file"; };
switch ($ARGV[0])
{
	case ""				{ usage(); }
	case "-a"			{ add(); }
	case "--add"		{ add(); }
	case "-r"			{ remove(); }
	case "--remove"		{ remove(); }
	case "-m"			{ metadata(); }
	case "--metadata"	{ metadata(); }
	case "-c"			{ comment(); }
	case "--comment"	{ comment(); }
	else				{ usage(); }
}

sub usage()
{
	print "Dear User,\n";
	print "Usage: mhub -options playlist"
	print "\n";
	print "-a / --add filename\n";
	print "\tadds the file to the playlist\n";
	print "-r / --remove songname\n";
	print "\tremoves the song from the playlist\n";
	print "-m / --metadata songname\n";
	print "\tthis fetches the metadata about the song from musicbrainz\n";
	print "-c / --comment songname comment\n";
	print "\tthis allows you to add comments to songs\n";
}

sub add()
{
do 'add.pl';
};
sub remove()
{
do 'remove.pl';
};
sub metadata()
{
do 'metadata.pl';
};
sub comment()
{
do 'comment.pl';
};