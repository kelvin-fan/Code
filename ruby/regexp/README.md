![Ruby Logo](https://findicons.com/files/icons/899/ruby_programming/256/ruby.png)

## Table of Contents
1. [Match a regexp](https://github.com/ZeroSword-X/programming/tree/master/ruby/regexp#regular-expressions-matches)
1. [Collect matches](https://github.com/ZeroSword-X/programming/tree/master/ruby/regexp#how-to-collect-regex-matches)

---

#### Regular expression matches

```ruby
#!/usr/bin/env ruby

# Regexp is a class in Ruby
puts /Regexp is a class/.class



# Two ways to see if a string matches a regular expression
m1 = /Hello/.match('Hello World')
puts m1.class      # output: MatchData

m1 = /Hello/.match('blahblahblah')
puts m1.class      # output: NilClass (i.e. if not matched, nil will be returned)


s = "Some String"
m2 = (s =~ /Str/)
puts m2           # output: 5, which is the starting position (class: Fixnum)

m2 = (s =~ /STR/)
puts m2.class     # output: NilClass (i.e. nil)
```

<br>

#### How to collect regex matches

- Reference: [https://www.regular-expressions.info/ruby.html](https://www.regular-expressions.info/ruby.html)

```ruby
#!/usr/bin/env ruby

string = "He321 Wor22"  
phone_re = /(\w+) (\w+)/  
m = phone_re.match(string)

# m[0] contains the part of the string that matched our pattern
# m[1] contains the first capture, m[2] the second and so forth
# m.captures returns an array of capturing strings (i.e. parenthetical matches)
puts 'm[0] = ' + m[0]
puts 'm[1] = ' + m[1]
puts m.captures.to_s


# 'string'.scan returns an array all regex matches
result = '123d23128dsa21939213j23hd98e12'.scan(/\d+/)
puts result.to_s
```
