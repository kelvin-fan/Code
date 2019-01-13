## Files in PHP

-   Write to a file using `file_put_contents()` in PHP

     ```php
     $file = 'file.html';
     $time = time();
     $info = "Iteration: $time</br>";
     
     file_put_contents($file, $info, FILE_APPEND);
     
     print "Script Ran at: $time</br>";
     ```

<br>

-   Open a file using `file()` in PHP

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

<br>

