### Using Array in PHP

<br>

- Basic Use of Arrays in PHP

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
              'city' => 'Sydney'       
);

$hash1 = ['name' => 'Zoe', 'city' => 'Melbourne'];

print_r($hash);
print "<br>";
print $hash['name'];
```

<br>

- Sorting an array

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

- Use foreach() to iterate through an array

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
