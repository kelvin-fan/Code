![PHP logo](http://php.net/images/logos/new-php-logo.png)

## Table of Contents
1. [Weird PHP Code](https://github.com/ZeroSword-X/programming/tree/master/php/basic#weird-php-code)
1. [Loops](https://github.com/ZeroSword-X/programming/tree/master/php/basic#loops-in-php)
1. [If statement](https://github.com/ZeroSword-X/programming/tree/master/php/basic#if-statement)

---

#### Weird PHP Code

```php
$string = "Hello World";
$string1 = "33Hello World";
$int = 19;
$float = 2.2;

// Output is 19 - $FLOAT is undefined and evaluated to 0
$garbage = $FLOAT + $int;

// Output is 19 - $string is evaluated to 0 as it is NOT numeric
$garbage2 = $string + $int;

// Output is 52 - $string1 is evaluated to 33 in this case (similar to Perl)
$garbage3 = $string1 + $int;

print "<h1>String</h1>";
print $string;
print "<h1>Int</h1>";
print $int;
print "<h1>Float</h1>";
print $float;
print "<h1>Garbage (Captitalization Error)</h1>";
print $garbage;
print "<h1>Garbage2 and Garbage 3 (Adding a String)</h1>";
print $garbage2;
print "<br>";
print $garbage3;
```

<br>

#### Loops in PHP

```php
// For Loop
for ($x = 1; $x <= 20; $x++) {
   print $x;
   print "<br>\n";   
}
print "<br>\n";


// While Loop
$x = 10;

while ($x > 0) {
   print "\$x = $x";
   print "<br>\n";
   $x--;
}
print "<br>\n";


// Do While Loop
$y = 0;

do {
   print "At Least Execute Once !!";
} while ($y > 0);
```

<br>

#### If statement

```php
$x = 10;

if ($x < 10) {
   print "Less than 10 !!";
} elseif ($x >= 10 && $x <= 20) {
   print "Between 10 and 20 !!";
} else {
   print "Greater than 20 !!";
}
```
