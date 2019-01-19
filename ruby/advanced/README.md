![Ruby Logo](https://findicons.com/files/icons/899/ruby_programming/256/ruby.png)

## Table of Contents
1. [Exceptions](https://github.com/ZeroSword-X/programming/tree/master/ruby/advanced#exception-handling)
1. [Syntactic sugar](https://github.com/ZeroSword-X/programming/tree/master/ruby/advanced#syntactic-sugar)

---

#### Exception handling

```ruby
#!/usr/bin/env ruby

# => e (map the exception to an object variable named e)
# Note: => e can be omitted, it is OK to have just the keyword rescue
begin
   puts "Inside begin"
   raise NoMethodError
rescue => e 
   puts "Inside rescue with Error -> #{e.message}"
else
   # get executed if there's no exception in the begin block
   puts "Inside else"
end

print "\n"


# For instance, if you rescue StandardError, it actually "rescues" StandardError and its child exceptions
begin
   puts "Inside begin"
   raise RuntimeError
   # raise Interrupt
rescue StandardError => e
   puts "Inside rescue with StandardError -> #{e.message}"
rescue SignalException => e
   puts "Inside rescue with SignalException -> #{e.message}"
else
   puts "inside else"
end
```

<br>

#### Syntactic sugar

-   Setters and Getters

     ```ruby
     #!/usr/bin/env ruby
     
     class People
        def initialize(name, age, gender)
           @name = name
           @age = age
           @gender = gender
        end
     
        def name
           @name
        end
     
        def age=(age)
           @age = age
        end
     
        def gender
           @gender
        end
     
        def gender=(gender)
           @gender = gender
        end
     
     end
     
     p = People.new("Peter", 40, "Male")
     
     puts p.name
     # p.name = "Peterson"   (cause exception: NoMethodError)
     
     # puts p.age            (cause exception: NoMethodError)
     p.age = 43            # syntactic sugar for p.age=(43)
     
     puts p.gender
     p.gender = "Female"
     ```
     
     
     ```ruby
     #!/usr/bin/env ruby
     
     class People
        def initialize(name, age, gender)
           @name = name
           @age = age
           @gender = gender
        end
     
        attr_reader   :name
        attr_writer   :age
        attr_accessor :gender
     end
     
     p = People.new("Peter", 40, "Male")
     
     puts p.name
     # p.name = "Peterson"   (cause exception: NoMethodError)
     
     # puts p.age            (cause exception: NoMethodError)
     p.age = 43
     
     puts p.gender
     p.gender = "Female"
     ```
