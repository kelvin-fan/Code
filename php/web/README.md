## Web Programming using PHP

-   HTTP Header Redirection

     ```php
     <?php

     header("Location: https://www.cnn.com");
 
     ?>
     ```

<br>

-   Send data to PHP with HTML form - `form.php` and `formscript.php`

     ```html
     <form action="formscript.php" method="post">
        Your name: <input type="text" name="name" />
        <br><br>
        <select name="sizes">
          <option value="small">Small</option>
          <option value="medium">Medium</option>
          <option value="large">Large</option>
        </select>
        <br><br>
        <input type="checkbox" name="shift1" value="First Shift" /> First Shift <br>
        <input type="checkbox" name="shift2" value="Second Shift" /> Second Shift <br><br>
        <input type="submit" /> 
     </form>
     ```

     ```php
     // $_POST stores the names and parameters passed in POST requests
     $name = $_POST['name'];
     $sizes = $_POST['sizes'];
     $shift1 = $_POST['shift1'];
     $shift2 = $_POST['shift2'];
     
     print "Name: $name";
     print "<br>";
     print "T Shirt Size: $sizes";
     print "<br>";
     print "Shifts Available: ";
     print $shift1;
     print $shift2;
     ```

<br>

