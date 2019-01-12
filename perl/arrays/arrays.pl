#!/usr/bin/env perl

use strict;
use warnings;

my @array = qw(This is a demo for array splice !!);

splice @array, 1, 1;

print "@array\n";
