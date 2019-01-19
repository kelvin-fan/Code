![Ruby Logo](https://findicons.com/files/icons/899/ruby_programming/256/ruby.png)

## Table of Contents
1. [Write a new class](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#writing-a-new-class)
1. [Useful methods](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#useful-methods-for-all-classes)
1. [Method missing](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#method-missing)
1. [Add new methods](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#add-methods-to-an-existing-class)
1. [Class variables](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#class-variables)
1. [Class methods](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#class-methods)
1. [Inheritance](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#inheritance)
1. [Overriding methods](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#overriding-methods)
1. [Method overloading](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#method-overloading)
1. [Access control](https://github.com/ZeroSword-X/programming/tree/master/ruby/classes#access-control)

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
d.bark
```

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

<br>

#### Add methods to an existing class

> In Ruby, classes are never closed: you can always add methods to an existing class. This applies to the classes you write as well as the standard, built-in classes. All you have to do is open up a class definition for an existing class, and the new contents you specify will be added to whatever's there.


```ruby
#!/usr/bin/env ruby

class Dog
   def initialize(name)
      @name = name
   end

   def bark
      puts "My name is #{@name}"
   end
end


# Add new methods to a class
class Dog
   def ultimate
      puts "Wo Wo Wo !!!"
   end
end

d = Dog.new('Bobby')
d.bark
d.ultimate
```

<br>

#### Class variables

```ruby
#!/usr/bin/env ruby

class People

   # class variables must be initialized
   # It is shared among all instances of a class
   @@count = 0

   def initialize(name = "No name")
      @name = name
      @@count += 1
   end

   def count
      @@count
   end

end

p1 = People.new("Alice")
p2 = People.new("Bob")

puts p1.count   # output: 2
```

<br>

#### Class methods

```ruby
#!/usr/bin/env ruby

class People

   # def self.hello ... end is also OK
   def People.hello
      "Hello World !!"
   end

end

# invoke the class method hello of class People
puts People.hello
```

<br>

#### Inheritance

```ruby
#!/usr/bin/env ruby

class People
   def initialize(name)
      @name = name
   end
end

# class Teacher inherits class People
class Teacher < People
   def initialize(age=18)
      super("Tim")   # call the initialize method (i.e. method with the same name) of the parent class
      @age = age
   end
end
```

> All Ruby objects have a set of instance variables. These are **not defined** by the objects's class - they are simply created when a value is assigned to them. Because instance variables are not defined by a class, they are unrelated to subclassing and the inheritance mechanism.
>
> In the above code, Lab defines an initialize method that chains to the initialize method of its super-class. The chained method assigns values to the variable @breed, which makes those variables come into existence for a particular instance of Lab.
>
> The reason that they sometimes appear to be inherited is that instance variables are created by the methods that first assign values to them, and those methods are often inherited or chained.
>
> Since instance variables have **nothing to do with inheritance**, it follows that an instance variable used by a subclass cannot "shadow" an instance variable in the super-class. If a subclass uses an instance variable with the same name as a variable used by one of its ancestors, it will overwrite the value of its ancestor's variable.

```ruby
#!/usr/bin/env ruby

class People
   def initialize(name)
      @name = name
   end
end

# class Teacher inherits class People
class Teacher < People
   def initialize(age=18)
      @age = age
   end
end

t = Teacher.new(42)
print t.instance_variables   # output: [:@age]
print "\n"
```

<br>

#### Overriding methods

```ruby
#!/usr/bin/env ruby

class People
   def initialize(name = "No Name")
      @name = name
   end

   def show_name
      print "#{@name}\n"
   end
end

class Teacher < People
   def initialize(name)
      # 1. super automatically passes all the arguments to the higher-up method
      # 2. super() means no arguments
      # 3. super(a,b,c) sends exactly those arguments (i.e. a, b and c)

      super            
      # super()        
      # super("YY")
   end

   # method overriding
   def show_name
      print "Teacher: #{@name}\n" 
   end
end

t = Teacher.new("Tim")
t.show_name
```

<br>

#### Method overloading

- Unlike Java, in ruby it is not allowed to have 2 versions of method with the same name. However, it can still be acheived using `*args`
- Reference: [http://rubylearning.com/satishtalim/ruby_overloading_methods.html](http://rubylearning.com/satishtalim/ruby_overloading_methods.html)

<br>

#### Access control

1. Public methods can be called by everyone - no access control is enforced. A class's instance methods (these do not belong only to one object; instead, every instance of the class can call them) are public by default; anyone can call them. The initialize method is always private.
1. Protected methods can be invoked only by objects of the **defining class and its subclasses**. Access is kept **within the family**. However, usage of protected is limited.
1. Private methods **cannot be called with an explicit receiver** - the (implicit) receiver is always self. This means that private methods can be called only in the context of the current object; you cannot invoke another object's private methods.

> In Ruby, public, private and protected apply only to methods.


```ruby
#!/usr/bin/env ruby

class People
   def initialize(name = "No Name")
      @name = name
   end

   def m1
      puts "m1: inside public method"
      # self.m3    produce NoMethodError
      # m3         OK, no exception
   end

   def m2 
      puts "m2: inside protected method"
   end

   def m3
      puts "m3: inside private method"
   end

   def name
      return @name
   end

   def compare_name(p2)
      # it is OK to call the protected method (with receiver) inside the defining class and subclasses
      if self.name < p2.name
         puts "compare_name: <"
      else
         puts "compare_name: >="
      end
   end   

   public    :m1, :compare_name
   protected :m2, :name
   private   :m3
end

p = People.new("Leon")
p.m1
# p.m2   Both p.m2 and p.m3 produces NoMethodError (exception)
# p.m3
```
