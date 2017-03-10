#!/usr/bin/perl
use strict;
use warnings;

use JSON qw(encode_json decode_json);

print "removing the fsevents chunk form this npm-shrinkwrap.json file\n";
open (my $file, "npm-shrinkwrap.json");
my $shrinkwrap = <$file>;
close $file;

my $json = JSON::decode_json($shrinkwrap);

