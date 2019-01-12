#!/usr/bin/env perl

use strict;
use warnings;

{
   my $x = 1;

   sub print_x {
      print "\$x = ", $x++, "\n";
   }
}

print_x();   # x = 1 
print_x();   # x = 2
print_x();   # x = 3
