![Ruby Logo](https://findicons.com/files/icons/899/ruby_programming/256/ruby.png)

## Table of Contents
1. [Ruby Code Blocks associated with method invocations](https://github.com/ZeroSword-X/programming/tree/master/ruby/basic#put-vs-print)
1. [block_given?](https://github.com/ZeroSword-X/programming/tree/master/ruby/blocks#block_given---check-if-a-method-is-invoked-with-a-block-which-can-be-yielded)
1. [Provide parameter to the block using yield](https://github.com/ZeroSword-X/programming/tree/master/ruby/blocks#provide-parameter-to-the-block-using-yield)
1. [Block variable](https://github.com/ZeroSword-X/programming/tree/master/ruby/blocks#block-variable---prevent-manipulating-variables-outside-of-its-scope)

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

#### Block variable - prevent manipulating variables outside of its scope

- **Problem**: The block changes the variable `x` outside of its scope

```ruby
#!/usr/bin/env ruby

x = 10

5.times do |y|
   x = y
   puts "x inside the block: #{x}"
end

# Output:
# x inside the block: 0
# x inside the block: 1
# x inside the block: 2
# x inside the block: 3
# x inside the block: 4
# x outside the block: 4

puts "x outside the block: #{x}"
```

- **Solution**: Use block variables (after the semicolon inside the "goalposts")

```ruby
# Output:
# x inside the block 0
# x inside the block 1
# x inside the block 2
# x inside the block 3
# x inside the block 4
# x outside the block 10

x = 10

# x is a block variable in the block
5.times do |y; x|
   x = y
   puts "x inside the block #{x}"
end

puts "x outside the block #{x}"
```
