![Perl logo](https://www.brandeps.com/logo-download/P/Perl-01.png)

## Table of Contents
1. [Only check the syntax](https://github.com/ZeroSword-X/programming/tree/master/perl/cmdline#check-if-the-syntax-is-ok-but-not-executing-it)
1. [Evaluate the given expression](https://github.com/ZeroSword-X/programming/tree/master/perl/cmdline#execute-and-evaluate-the-string-provided)
1. [Automatic newline](https://github.com/ZeroSword-X/programming/tree/master/perl/cmdline#automatic-newline--l---caveat-only-work-on-print)
1. [Looping](https://github.com/ZeroSword-X/programming/tree/master/perl/cmdline#looping--n---note--is-the-current-line-number)
1. [Reference](https://github.com/ZeroSword-X/programming/tree/master/perl/cmdline#reference)

---

#### Check if the syntax is OK, but not executing it

```bash
perl -c some.pl
```
<br>
#### Execute and Evaluate the string provided

```bash
perl -e 'print 3 + 4, "\n"'
```
<br>
#### Automatic newline `-l`   (**Caveat**: only work on `print`)

```bash
perl -l -e 'print 3 + 4'

(or)

perl -le 'print 3 + 4'
``` 
<br>
#### Looping `-n`   (**Note**: `$.` is the current line number)

```bash
perl -lne 'print "$.   $_"' some.txt

(or)

cat some.txt | perl -lne 'print "$.   $_"'
```

<br>

#### Reference
1. [Perl Monk - Command Line Options](https://www.perlmonks.com/?node_id=324749)
1. `perldoc perlrun`
