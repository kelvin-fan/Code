## Basic Ruby Programming

-   `puts` vs `print`

     ```ruby
     #!/usr/bin/env ruby
     
     # puts stands for put string and it automatically insert a newline at the end
     puts "Hello World"
     
     # unlike puts, print does not insert a trailing newline
     print "Hello World\n"    
     ```

<br>

-   `if..elsif..else` statement with `and`, `or`

     ```ruby
     #!/usr/bin/env ruby
     
     x = 10
     
     if x >= 0 and x < 20
        puts "Greater or equal to 0 and Less than 20 !!"
     elsif x >= 20 and x < 40
        puts "Greater or equal to 20 and Less than 40 !!"
     else 
        puts "Greater or equal to 40 !!"
     end
     ```

<br>

-   Operator precedence - `and` vs `&&` 

     ```ruby
     #!/usr/bin/env ruby
     
     # Note: not 3 is equal to false in ruby
     
     # Since && has a higher precedence than not,
     # not 3 && nil is interpreted as not (3 && nil)
     if not 3 && nil
        puts "not 3 && nil: Hello !!"
     end
     
     # 'and' has a lower precedence than not,
     # not 3 and nil is interpreted as (not 3) and (nil)
     if not 3 and nil
        puts "not 3 and nil: Hello !!"
     end
     ```

<br>


