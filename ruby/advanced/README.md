![Ruby Logo](https://findicons.com/files/icons/899/ruby_programming/256/ruby.png)

## Table of Contents
1. [Writing Methods](https://github.com/ZeroSword-X/programming/tree/master/ruby/advanced#writing-methods)
1. []()
---

#### Writing Methods

```ruby
#!/usr/bin/env ruby

# Note: a method returns the value of the last statement executed in the method

# method with no argument
def foo
   100
end

# method with arguments, and set the default value of parameters
def foo1(name="ZeroSword", age)
   return name
end

# method with different number of parameters - splat argument
def foo2(*args)
   # Here, args is an array
   puts args.class.to_s
end

puts foo1 "Tim", 33
puts foo2(1, 2, 3, "33")
```

<br>

#### Method ending with `?` or `!`

- Conventionally (of Ruby), methods ending with '?' answers the question posed by method invocation
- Conventionlly, methods ending with '!', known as **Bang Methods**, they are "dangerous" since they manipulate the original object, instead of returning a fresh object. For instance, **sort** vs **sort!**

<br>

