![Perl logo](https://www.brandeps.com/logo-download/P/Perl-01.png)

## Table of Contents
1. [Reference in Perl](https://github.com/ZeroSword-X/programming/tree/master/perl/references#how-to-create-and-use-reference-in-perl)

---

#### How to create and use reference in Perl

```perl
use strict;
use warnings;

sub func {
   print "I am a function !!\n";
}

my $scalar = 1000;
my @array = qw(Hello World);
my %hash = ('HK' => 'Hong Kong', 'AUS' => 'Australia');


# Making references for different types
my $sref = \$scalar;
my $aref = \@array;
my $href = \%hash;
my $fref = \&func;


# Anonymous arrays, hashes and subroutines using references
$aref = [1, 2, 3, 4];
$href = {'HK' => 'Hong Kong', 'AUS' => 'Australia'};
$fref = sub { print "I am an anonymous function\n"; };


# Accessing references
print "$$sref\n";
print "$aref->[0]\n";
print "$href->{HK}\n";
$fref->();
print "\n";


# print the type of references (otherwise empty string)
# see https://perldoc.perl.org/functions/ref.html
print ref $aref, "\n";
```
