![Perl logo](https://www.brandeps.com/logo-download/P/Perl-01.png)

## Table of Contents
1. [Hashes in Perl]()

---

#### Ways to manipulate hashes in perl

```perl
use strict;
use warnings;

use Data::Dumper qw(Dumper);

# Hash assignment
my %hash = ('MAC' => 'Macau',
            'HK'  => 'Hong Kong',
            'AUS' => 'Australia'
           );

$hash{'GER'} = 'GERMANY';


# Accessing hash elements
print $hash{'HK'}, "\n\n";


# Check if a key is existed and initialised in a hash
# Result: Exists BUT not defined
$hash{'?'} = undef;
print "Exists\n\n" if exists($hash{'?'});
print "Defined\n\n" if defined($hash{'?'});


# Get the keys of a hash using the keys function 
foreach my $key (keys %hash) {
   print "$key\n";
}
print "\n";


# Delete an element and the corresponding key
# Now $hash{'?'} is no longer 'exists'
delete $hash{'?'};


# Get the hash entries (even if it is undef)
foreach my $value (values %hash) {
   print "$value\n";
}
print "\n";


# Invert a hash (i.e. key => value becomes value => key)
%hash = reverse %hash;
print Dumper(\%hash), "\n";


# Another way to iterate a hash
while (my ($key, $value) = each %hash) {
   print "$key => $value\n";
}
print "\n";
```
