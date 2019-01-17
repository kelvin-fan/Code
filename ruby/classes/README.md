![Ruby Logo](https://findicons.com/files/icons/899/ruby_programming/256/ruby.png)

## Table of Contents
1. [Write a new class](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#writing-a-new-class)
1. [Useful methods](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#useful-methods-for-all-classes)
1. [Method missing](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#method-missing)

---

#### Writing a new class

```ruby
#!/usr/bin/env ruby

# define a new class and its methods
class Dog
   def initialize(name)
      @name = name
   end

   def bark
      puts "My name is #{@name}"
   end
end

d = Dog.new('Bobby')
d.bark```

<br>

#### Useful methods for all classes

```ruby
#!/usr/bin/env ruby

# define a new class and its methods
class Dog
   def initialize(name)
      @name = name
   end

   def bark
      puts "My name is #{@name}"
   end
end

d = Dog.new('Bobby')

 
# object_id - get the object id of an object (Note: the id is unique)
puts d.object_id

# respond_to? - check whether the object knows how to handle a message
puts d.respond_to?('talk')   # output: false
puts d.respond_to?('bark')   # output: true

# methods - to list all the available methods
puts d.methods.sort.to_s

# instance_of? - check if an object is an instance of a given class
puts 3.instance_of?(Fixnum)
```

> Classes in Ruby are first-class objects - each is an instance of class Class. When a new class is defined (typically using class Name ... end), an object of type Class is created and assigned to a constant (Name. in this case). When Name.new is called to create a new object, the new class method in Class is run by default, which in turn invokes allocate to allocate memory for the object, before finally calling the new object's initialize method. The constructing and initializing phases of an object are separate and both can be over-ridden. The construction is done via the new class method, the initialization is done via the initialize instance method. initialize is not a constructor!

<br>

#### Method Missing

```ruby
#!/usr/bin/env ruby

# If there is no such a method ...

class Dummy  
   # Note: m is a symbol
   def method_missing(m, *args, &block)  
      puts "There's no method called #{m} here -- please try again."  
   end  
end  

Dummy.new.anything  
```
