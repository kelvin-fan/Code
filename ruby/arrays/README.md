![Ruby Logo](https://findicons.com/files/icons/899/ruby_programming/256/ruby.png)

## Table of Contents
1. [Ruby arrays](https://github.com/ZeroSword-X/programming/tree/master/ruby/arrays#ruby-arrays)
1. [Command line arguments](https://github.com/ZeroSword-X/programming/tree/master/ruby/arrays#command-line-arguments)
1. [Iterating an array](https://github.com/ZeroSword-X/programming/tree/master/ruby/arrays#iterating-an-array-in-ruby)
1. [Parallel assignment](https://github.com/ZeroSword-X/programming/tree/master/ruby/arrays#parallel-assignment)

---

#### Ruby arrays

```ruby
#!/usr/bin/env ruby

# create an array
array = [7, 22, 33, 14, 25]

puts array[2]    # output: 33
puts array[-5]   # output: 7

# out of index -> nil will be return
out = array[100]
puts "array[100] is nil !!" if out == nil  
```

<br>

#### Command line arguments

```ruby
#!/usr/bin/env ruby

# For instance, ruby name.rb 12 tt 33
# output: ["12", 'tt', "33"]
puts ARGV.to_s
```

<br>

#### Iterating an array in Ruby

```ruby
#!/usr/bin/env ruby

array = [7, 22, 33, 14, 25]

array.each do |num|
   puts num
end
```

<br>

#### Parallel assignment

```ruby
#!/usr/bin/env ruby

# %w - like qw(...) in perl
array = %w(Parallel Assignment in ruby)

# *_ - similar to *_ in python variables assignment, and it is an array in this scenario
w1, *_, w4 = array

puts w1   # output: Parallel
puts w4   # output: ruby
```
