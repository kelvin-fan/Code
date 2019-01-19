![Perl logo](https://www.brandeps.com/logo-download/P/Perl-01.png)

## Table of Contents
1. [Only check the syntax]()
1. [Evaluate the given expression]()
1. [Automatic newline]()
1. [Looping]()
1. [Reference]()

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
1. or `perldoc perlrun`
