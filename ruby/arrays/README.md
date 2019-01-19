![Ruby Logo](https://findicons.com/files/icons/899/ruby_programming/256/ruby.png)

## Table of Contents
1. [Ruby arrays](https://github.com/ZeroSword-X/programming/tree/master/ruby/arrays#ruby-arrays)
1. [Command line arguments](https://github.com/ZeroSword-X/programming/tree/master/ruby/arrays#command-line-arguments)
1. [Iterating an array](https://github.com/ZeroSword-X/programming/tree/master/ruby/arrays#iterating-an-array-in-ruby)
1. [Parallel assignment](https://github.com/ZeroSword-X/programming/tree/master/ruby/arrays#parallel-assignment)
1. [Accessing elements](https://github.com/ZeroSword-X/programming/tree/master/ruby/arrays#accessing-elements-in-an-array)
1. [Adding/Removing items](https://github.com/ZeroSword-X/programming/tree/master/ruby/arrays#addingremoving-items-from-an-array)
1. [Reference](https://github.com/ZeroSword-X/programming/tree/master/ruby/arrays#reference)

---

#### Ruby arrays

```ruby
#!/usr/bin/env ruby

# create an array
array = [7, 22, 33, 14, 25]

puts array.length   # output: 5

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

<br>

#### Accessing elements in an array

```ruby
#!/usr/bin/env ruby

array = %w(accessing elements in ruby, Ruby is so fun fun fun)
puts array.to_s

# [start, len]
a1 = array[1, 2]

# [start..end]
a2 = array[0..4]   # or array[0..-6]

puts a1.to_s
puts a2.to_s
```

<br>

#### Adding/Removing items from an array

```ruby
#!/usr/bin/env ruby

array = [-1, 4, 55, 7, 2]

array.push(3)       # or array << 3
puts array.to_s     # output: [-1, 4, 55, 7, 2, 3]

array.unshift(99)
puts array.to_s     # output: [99, -1, 4, 55, 7, 2, 3]

x = array.pop()
puts x              # output: 3
puts array.to_s     # output: [99, -1, 4, 55, 7, 2]

y = array.shift()
puts y              # output: 99
puts array.to_s     # output: [-1, 4, 55, 7, 2]

array.insert(3, 'array.insert')
puts array.to_s     #output: [-1, 4, 55, "array.insert", 7, 2]

array = [1, 2, 3, 2, 2, 5]
z = array.delete(2)     # remove all occurence of the number 2
puts z                  # output: 2
puts array.to_s         # output: [1, 3, 5]
```

<br>

#### Reference

- [Ruby Doc](https://ruby-doc.org/core-2.6/Array.html)
