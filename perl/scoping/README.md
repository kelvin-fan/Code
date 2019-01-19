![Perl logo](https://www.brandeps.com/logo-download/P/Perl-01.png)

## Table of Contents
1. [Lexical and Global variables]()
1. ["local" variables]()
1. [Package variables]()
1. ["static" variables]()
1. [Reference]()

---

#### Lexical and Global variables

```perl
use strict;
use warnings;

my $x = "I am lexical variable";
our $y = "I am global variable";
```

<br>

#### **Temporary** global variables using `local`

- The local qualifier saves the current value of a global variable, and create a new global variable (same name) in the current control block (undef). Note that The old value will be restored when the control leaves the current block.

```perl
use strict;
use warnings;

our $x = "Global x";

sub foo {
   print "$x\n";
}

foo();   # Output: Global x


{
local $x = "Local x";
foo();   # Output: Local x
}


foo();   # Output: Global x
``` 

<br>

#### Package variables

```perl
use strict;
use warnings;

# Usually just one package per .pl/.pm file, this is just for the purpose of testing

# package main;   (default)
sub foo {
   print "I am main::foo()\n";
}

# Maxim: package variables are global variables

# Caveat: Don't use my and our on the same variable names (Error: masked earlier declaration)
our $x = 'I am $main::x';
print "package main: $x\n";   # Output: I am $main::x


package new1;

# foo();   Will produce an error because new1::foo() is undefined

our $x = 'I am $new1::x';
print "\npackage new1: $x\n";         # Output: I am $new1::x
print "package new1: $main::x\n";     # Output: I am $main::x

package new2;
print "\npackage new2: ";
main::foo();                        # Output: I am main::foo()
print "package new2: $main::x\n";   # Output: I am $main::x
print "package new2: $new1::x\n";   # Output: I am $new1::x
```

<br>

#### How to use static variable in perl (a workaround)

```perl
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
```

<br>

#### Reference
- [Coping with Scoping](https://perl.plover.com/FAQs/Namespaces.html)
