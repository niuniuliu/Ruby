# Naming a file
puts 'this_is_a_snake_cased_file.rb'

#Assigning a variable
puts 'forty_two = 42'

# Defining a method
def this_is_a_great_method
  # do stuff
  puts 'this is \'this_is_a_great_method\''
end

this_is_a_great_method

# Constant declaration
FOUR = 'four'
FIVE = '5'
#FIVE = '4'

# Multi-line
[1, 2, 3].each do |i|
  # do stuff
end


# Does the same thing in single line
[1, 2, 3, 'a', 'b', [1, '2']].each { |i| p i}

# Class naming
class MyFirstClass
  def say_hi
    p 'hello & hi'
  end

  def say_my_name
    # do stuff
  end

end

class MySecondClass < MyFirstClass
end

my_first_method = MyFirstClass.new
my_first_method.say_hi

my_second_method = MySecondClass.new
my_second_method.say_hi


=begin
Only for document:
http://www.ruby-doc.org/core-2.1.2/String.html

symbol :: is class method
symbol # is instance method
=end

=begin
eg. Ruby code
1. ActiveRecord::Base

ActiveRecord is namespace
Base is the class

2. Encoding::Coverter
Encoding is namespace name
Coverter is the class name

=end

# Example: Instance Methods vs Class Methods

# puts "world wide web".split

p "split =>"
p "world wide web".split

p "split =>"
p " now's   the time".split

p "split(' ') =>"
p " now's   the time".split(' ')

p "split(/ /) =>"
p " now's   the time".split(/ /)

p "split(/ /) =>"
p " now's   the time".split(/ /)

p "split(%r{,\s*}) =>"
p "1,    2.34,56,     7".split(%r{,\s*})

p "split(%r{.'\s'*}) =>"
p "1,    2.34,56,   .  7".split(%r{.\s*})
#TODO %r{.\s*} doesn't work.

b = String.new('str')
p b

c = String.try_convert('try_convert')
p c

d = String.try_convert(123)
p d

e = String.try_convert(//)
p e

puts 1

puts 1 + 1 
