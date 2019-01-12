## Reference
* [Perl Maven](https://perlmaven.com/perl-tutorial)
* [Perl Monks](https://www.perlmonks.org/)

## Useful Techniques

-   Check if a variable is defined

     ```perl
     use strict;
     use warnings;
     
     my $y;
     
     if (defined $y) {
        print "The variable \$y is defined !!\n";
     } else {
        print "The variable \$y is NOT defined !!\n";
     }
     ```

<br>

-   Comparision Operators in perl

    | **Type**                 | **Numeric** | **String** |
    |:-------------------------|:-----------:|:----------:|
    | Greater Than             | >           | gt         |
    | Less Than                | <           | lt         |
    | Equal to                 | ==          | eq         |
    | Not equal                | !=          | ne         |
    | Less than or equal to    | <=          | le         |
    | Greater than or equal to | >=          | ge         |

<br>

-   Operator Precedence

    | **Function**            | **Meaning**                        | **$x is now..** |
    |:------------------------|:-----------------------------------|:---------------:|
    | $x = 5 == 6 or 5 == 5   | ($x = (5 == 6)) or ($x = (5 == 5)) | FALSE           |
    | $x = (5 == 6 or 5 == 5) | $x = ((5 == 6) or (5 == 5))        | TRUE            |
    | $x = 5 == 6 ¦¦ 5 == 5   | $x = ((5 == 6) ¦¦ (5 == 5))        | TRUE            |
    | ($x = 5 == 6) ¦¦ 5 == 5 | ($x = 5 == 6) ¦¦ 5 == 5            | FALSE           |
    | $x = 5 ¦¦ 6 == 6        | $x = (5 ¦¦ (6 == 6))               | 5               |
    | $x = (5 ¦¦ 6) == 6      | $x = ((5 ¦¦ 6) == 6)               | TRUE            |
    | $x = 5 or 6 == 6        | ($x = 5) ¦¦ ($x = (6 == 6))        | 5               |
    | $x = 1 == 2 && 3        | $x = (1 == 2) && $x = 3            | FALSE           |
    | $x = 1 == 1 && 3        | $x = (1 == 1) && $x = 3            | 3               |
    | $x = 1 == 2 ¦¦ 3        | $x = (1 == 2) ¦¦ $x = 3            | FALSE           |

<br>

-   Read from STDIN

     ```perl
     use strict;
     use warnings;
     
     print "Type q to quit: ";
     while (my $line = <STDIN>) {
        chomp $line;
     
        last if ($line eq 'q');
     
        print "You typed: $line\n\n";
        print "Type q to quit: ";
     }
     ```

<br>

-   Flow control in loops - `next` and `last` ([More on compound statement](https://perldoc.perl.org/perlsyn.html#Compound-Statements))

     ```perl
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
     ```

<br>

-   Execute an external command 

     ```perl
     use strict;
     use warnings;
     
     # Capture the output
     my $output = `ls`;
     
     print "Status Code = $?\n\n";
     print "The output:\n$output\n\n";
     
     # Only return the status code
     my $code = system('ls');
     print "Status Code = $code\n";
     ```

<br>

-   When reading a file using the while loop ...... 

     ```perl
     use strict;
     use warnings;
     
     # example.txt has only a numeric zero
     open my $fh, "<", "example.txt" or die "$!";
     
     # This is actually equivalent to while (defined(my $line = <$fh>)) { ...... }
     # No need to worry cases like the last line only has a zero
     my $count = 0;
     while (my $line = <$fh>) {
        $count++;
     }
     
     print "Number of lines: $count\n";
     close $fh;
     ```  

<br>

-   Use the diamond `<>` to read from STDIN or files 

     ```perl
     use strict;
     use warnings;

     # If there is no element in @ARGV, this script will read from STDIN
     # otherwise it will read from the files listed in @ARGV

     while (my $line = <>) {
        chomp $line;      # remove the trailing newline '\n'
        print "$line\n";
     }
     ```

<br>
