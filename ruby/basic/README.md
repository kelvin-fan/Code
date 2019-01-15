![Ruby Logo](https://findicons.com/files/icons/899/ruby_programming/256/ruby.png) { height: 200px; width: 200px; }

## Table of Contents
1. [puts vs print](https://github.com/ZeroSword-X/programming/tree/master/ruby/basic#put-vs-print)
1. [Truthy and Falsy values in Ruby](https://github.com/ZeroSword-X/programming/tree/master/ruby/basic#Truthy-and-Falsy-values-in-Ruby)
1. [if..elsif..else statement with and, or](https://github.com/ZeroSword-X/programming/tree/master/ruby/basic#ifelsifelse-statement-with-and-or)
1. [Operator precedence - and vs &&](https://github.com/ZeroSword-X/programming/tree/master/ruby/basic#operator-precedence---and-vs-)
1. [String operations](https://github.com/ZeroSword-X/programming/tree/master/ruby/basic#string-operations)
1. [Execute external command](https://github.com/ZeroSword-X/programming/tree/master/ruby/basic#execute-external-command)
1. [Getting Input](https://github.com/ZeroSword-X/programming/tree/master/ruby/basic#Getting-Input)

---

#### `put` vs `print`

```ruby
#!/usr/bin/env ruby

# puts stands for put string and it automatically insert a newline at the end
puts "Hello World"

# unlike puts, print does not insert a trailing newline
print "Hello World\n"    
```

<br>

#### Truthy and Falsy values in Ruby

```
Falsy: ONLY false, and nil
Truthy: anything else other than false and nil. For instance, [], 0, "" (empty string) are truthy
```

<br>

#### `if..elsif..else` statement with `and`, `or`

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

#### Operator precedence - `and` vs `&&` 

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

#### String operations

```ruby
#!/usr/bin/env ruby

# string concatenation
puts "Hello" + " " + "World" + " !!"

# string interpolation
h = "Hello"
s = "#{h} World !!"
puts s

# string repeatition
puts "Hello " * 5

# string append
puts "Hello" << " World !!"
```

<br>

#### Execute external command 

```ruby
#!/usr/bin/env ruby

# backticks - return the output of the command
x = `ls -ali`
puts x

# system('...') - return 
# 1. true if the command was executed properly
# 2. false if exited with a non-zero status                        
# 3. nil if failed to execute
y = system('ls -ali')
puts y
```

<br>

#### Getting Input

```ruby
#!/usr/bin/env ruby

# gets read a single line of data from stdin
input = gets

# input = gets.chomp    note: chomp = eat the trailing newline "\n"
# input = gets(1000)    note: 1000 is the 'limit' in gets
# input = input.chomp

puts input 
```

<br>

