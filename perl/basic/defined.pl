#!/usr/bin/env perl

use strict;
use warnings;

my $var1 = 0;  # result:  Defined !!!
my $var2;      # result:  Not defined !!!

if (defined $var1) {
   print "Defined !!!\n";
} else {
   print "Not defined !!!\n";
}




