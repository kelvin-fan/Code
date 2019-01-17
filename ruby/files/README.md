![Ruby Logo](https://findicons.com/files/icons/899/ruby_programming/256/ruby.png)

## Table of Contents
1. [Read or Write Files](https://github.com/ZeroSword-X/programming/tree/master/ruby/files#readwrite-files-in-ruby)

---

#### Read/Write Files in Ruby

```ruby
#!/usr/bin/env ruby

# Open and Read from files
# Note that the file will be automatically closed when the block terminates (if a block is given)

File.open('README.md', 'r') do |f|
   dummy = f

   while line = f.gets
      puts line
   end
end


# If a block is not given, remember to close the file manually
f = File.open('README.md', 'r')
puts f.closed?   # false

f.close
puts f.closed?   # true
```
