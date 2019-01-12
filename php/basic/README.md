### Basic PHP Programming

<br>

- Weird PHP Code

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


