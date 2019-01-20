![PHP logo](http://php.net/images/logos/new-php-logo.png)

## Table of Contents
1. [Writing to a file](https://github.com/ZeroSword-X/programming/tree/master/php/files#write-to-a-file-using-file_put_contents-in-php)
1. [Open a file](https://github.com/ZeroSword-X/programming/tree/master/php/files#open-a-file-using-file-in-php)

---

#### Write to a file using `file_put_contents()` in PHP

```php
$file = 'file.html';
$time = time();
$info = "Iteration: $time</br>";

file_put_contents($file, $info, FILE_APPEND);

print "Script Ran at: $time</br>";
```

<br>

#### Open a file using `file()` in PHP

```php
$file = file('some.txt');   // Turn the lines in some.txt to an array

// How to iterate through a file using foreach
foreach ($file as $line) {
   print "$line</br>";
}

foreach ($file as $line_no => $line) {
   print "$line_no: $line</br>";
}
```
