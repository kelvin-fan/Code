![Ruby Logo](https://findicons.com/files/icons/899/ruby_programming/256/ruby.png)

## Table of Contents
1. [Ruby Code Blocks associated with method invocations](https://github.com/ZeroSword-X/programming/tree/master/ruby/basic#put-vs-print)
1. [block_given?]()
1. [Provide parameter to the block using yield]()
1. [ddd]()

---

#### Ruby Code Blocks associated with method invocations

```ruby
#!/usr/bin/env ruby

def func
   yield
end


# Note that the block do ... end is NOT passed as an argument, it is passed as a block which can be called by using yield
func do
   puts "Hello In the block !!"
end
```

<br>

#### `block_given?` - check if a method is invoked with a block which can be yielded

```ruby
#!/usr/bin/env ruby

# block_given? returns true if a block is passed
def foo
   if block_given?
      puts "There is a block !!"
   else
      puts "There is no block !!"
   end
end


# One
foo

# Two
foo do
   puts "Hello In the block !!"
end
```

<br>

#### Provide parameter to the block using yield

```ruby
#!/usr/bin/env ruby

def call_block
   yield("Tim", 33)
end

call_block do |name, age|
   puts "#{name} is now #{age} years old !!"
end

# Special example
call_block do |name, age, job|
   puts "#{name} is now #{age} years old !!"

   # output: NilClass (nil) 
   puts job.class.to_s   
end
```

<br>


