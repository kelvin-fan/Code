![PHP logo](http://php.net/images/logos/new-php-logo.png)

## Table of Contents
1. [Arrays in PHP](https://github.com/ZeroSword-X/programming/tree/master/php/arrays#basic-use-of-arrays-in-php)
1. [Sorting](https://github.com/ZeroSword-X/programming/tree/master/php/arrays#sorting-an-array)
1. [foreach](https://github.com/ZeroSword-X/programming/tree/master/php/arrays#use-foreach-to-iterate-through-an-array)
1. [Multidimensional array](https://github.com/ZeroSword-X/programming/tree/master/php/arrays#multi-dimensional-array)

---

#### Basic Use of Arrays in PHP

```php
// Array in PHP
$array = array('bob', 739123, 'KEEEEE', 882.20);
$array1 = [1, 2, '[[[', 3];   // replacing array() in recent versions of PHP

print_r($array);   // print information about the variable
print "<br>";
print "\$array[2] = $array[2]";
print "<br>";

// ------------------------------------------------------------------

// Key indexed Array in PHP
$hash = array('name' => 'Bob',
              'city' => 'Sydney',       
              '3'    => 'Dummy'
);

$hash1 = ['name' => 'Zoe', 'city' => 'Melbourne'];

print_r($hash);
print "<br>";
print $hash['name'];
print $hash['3'];   // $hash[3] can also be used (no single quote)
```

<br>

#### Sorting an array

```php
// Sorting
$array = array('1', 'Hello', '13', 'Hello1', '33van', '14', '2', '5', '3');

/*
   Sort by default
   Note: if an int is compared to a string, PHP will try to convert the string
         to an int, and then do the comparison
*/
sort($array);
print_r($array);
print "<br>\n";

rsort($array);
print_r($array);
print "<br>\n";

// ------------------------------------------------------------------

// Sort the key indexed array
$hash = array(
   'orange' => 3,
   'blue'   => 5,
   'Red'    => 12,
   'white'  => 8,
   'Green'  => 7
);

print_r($hash);
print "<br>\n";

ksort($hash);
// krsort($hash);
print_r($hash);
```

<br>

#### Use foreach() to iterate through an array

```php
foreach (array_expression as $value) {
    statements;
}
```

```php
foreach (array_expression as $key => $value) {
    statements;
}
```
     
<br>
     
#### Multi-Dimensional Array
     
```php
$x = array('first'  => array(1, 2),
           'second' => array(3, 4),
           '3'      => 'Hello PHP !!'
);

print "{$x['first'][1]}";
```
