#!/usr/bin/env perl

use strict;
use warnings;

# next - starts next iteration
foreach (1..10) {
   next if ($_ % 3 == 0);
   print;
   print " ";
}

print "\n";


# last - exits the loop straight away
foreach (1..10) {
   last if ($_ == 5);
   print;
   print " ";
}

print "\n";
