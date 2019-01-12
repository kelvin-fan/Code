## Some Good Perl Tutorials
* [Perl Maven](https://perlmaven.com/perl-tutorial)
* [Perl Monks](https://www.perlmonks.org/)

## Command Line Options

### References
1. [Perl Monk - Command Line Options](https://www.perlmonks.com/?node_id=324749)
1. or `perldoc perlrun`

<br>

-   Check if the syntax is OK, but not executing it

     ```bash
     perl -c some.pl
     ```

<br>

-   Execute and Evaluate the string provided

     ```bash
     perl -e 'print 3 + 4, "\n"'
     ```

<br>

-   Automatic newline `-l`   (**Caveat**: only work on `print`)

     ```bash
     perl -l -e 'print 3 + 4'

     (or)

     perl -le 'print 3 + 4'
     ``` 

<br>

-   Looping `-n`   (**Note**: `$.` is the current line number)

     ```bash
     perl -lne 'print "$.   $_"' some.txt

     (or)

     cat some.txt | perl -lne 'print "$.   $_"'
     ```

