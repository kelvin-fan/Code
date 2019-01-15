![Ruby Logo](https://findicons.com/files/icons/899/ruby_programming/256/ruby.png)

## Table of Contents
1. [Hashes in Ruby](https://github.com/ZeroSword-X/programming/tree/master/ruby/hashes#hashes-in-ruby)

---

#### Hashes in Ruby

```ruby
#!/usr/bin/env ruby

# create a hash in Ruby
hash = {'name' => 'ZeroSword', 'age' => 33, 'gender' => 'male'}

# accessing element in a hash using key
puts hash['name']
puts hash['age']
puts hash['gender']
# hash['no_this_key'] -> nil


# In Ruby, it is recommended to use symbols rather than quoted string in hash
hash = Hash.new()          # a way to create an empty hash
hash[:name] = "Mary"
hash[:gender] = "Female"

# Or create using this way - same as the above example
hash = {name: "Mary", gender: "Female"}
puts hash
```
