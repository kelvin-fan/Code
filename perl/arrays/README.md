![Perl logo](https://www.brandeps.com/logo-download/P/Perl-01.png)

## Table of Contents
1. [Perl arrays and Data::Dumper](https://github.com/ZeroSword-X/programming/tree/master/perl/arrays#basic-arraylist-operations-and-datadumper)
1. [foreach](https://github.com/ZeroSword-X/programming/tree/master/perl/arrays#iterate-an-array-using-foreach)
1. [Size of an array](https://github.com/ZeroSword-X/programming/tree/master/perl/arrays#the-size-of-an-array)
1. [Command line arguments](https://github.com/ZeroSword-X/programming/tree/master/perl/arrays#argv-and-0)
1. [split and join](https://github.com/ZeroSword-X/programming/tree/master/perl/arrays#split-and-join)
1. [Array Slices](https://github.com/ZeroSword-X/programming/tree/master/perl/arrays#array-slices)
1. [splice](https://github.com/ZeroSword-X/programming/tree/master/perl/arrays#using-splice-to-insertremovereplace-array-elements)

---

#### Basic Array/List Operations and `Data::Dumper`

```perl
use strict;
use warnings;

# Dumper can be used when debugging arrays
use Data::Dumper qw(Dumper);

my @array = ('Hello', 12, 43.8);
print Dumper(\@array), "\n";

# Basic Array Operations: push, pop, shift and unshift
# push - append an element/an array to the end of an array
push @array, 'Perl is Great!';
push @array, (1..3);
print Dumper(\@array);

# pop - remove and return the last element of an array
my $element = pop @array;
print "$element\n";

# shift - remove and return the first element of an array
$element = shift @array;
print "$element\n";

# unshift - insert an element/array to the beginning of an array
unshift @array, '3di231';
unshift @array, (3..9);
print Dumper(\@array);
```

<br>

#### Iterate an array using `foreach`

```perl
use strict;
use warnings;

# Create an array containing 1 ~ 10
my @array = (1..10);

foreach my $num (@array) {
   ...
}
```

<br>

#### The size of an array

```perl
use strict;
use warnings;

my @array = (1..10);
print "The index of the last element = $#array\n";

# when array is used in SCALAR context, it is evaluated to the size of array
my $size = scalar @array;   # $size = 10
print -31 + @array, "\n";
```

<br>

#### `@ARGV` and `$0`

```perl
use strict;
use warnings;

print "The name of the .pl file = $0\n";

# @ARGV - command line arguments
# Suppose the command = ./test.pl 1 2 3, then @ARGV = (1, 2, 3)

# Copy the first 2 elements and assign their values to the corresponding variables
my ($a, $b) = @ARGV;
print "\$a = $a, \$b = $b\n";
```

<br>

#### `split` and `join`

```perl
use strict;
use warnings;

use Data::Dumper qw(Dumper);

my $string = "My name is Perl !!";

# split and join
my @words = split / /, $string;   # split on regexes
print Dumper(\@words), "\n";

$string = join '_', @words;
print "$string\n";
```

<br>

#### Array slices

```perl
use strict;
use warnings;

my @array = qw(This is a demo for array slices !!);

my ($first, $third) = @array[0, 2];
my ($a, $b, $c) = @array[1, 4, 5];

print "\$first = $first, \$third = $third\n";
print "\$a = $a, \$b = $b, \$c = $c\n";
```

<br>

#### Using `splice` to insert/remove/replace array elements

```perl
use strict;
use warnings;

my @array = qw(This is a demo for array splice !!);

# Remove ONE element starting from offset 2 (i.e. $array[2] included)
splice @array, 2, 1, 'NOT a';
print join(' | ', @array), "\n";
```
