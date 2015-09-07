#---
# Excerpted from "Programming Ruby 1.9 and 2.0",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby4 for more book information.

def say_goodnight(name)
  result = "Good night, " + name
  return result
end
# Time for bed...
puts say_goodnight("John-Boy")
puts say_goodnight("Mary-Ellen")
# The following lines are equivalent:
puts say_goodnight "John-Boy"
puts say_goodnight("John-Boy")
puts(say_goodnight("John-Boy"))

puts "And good night,\nGrandma" #=> And good night,
                                #=> Grandma
                                
def say_goodnight(name)
  result = "Good night, #{name}"
  return result
end
puts say_goodnight('Pa') #=> Good night, Pa

def say_goodnight(name)
  result = "Good night, #{name.capitalize}"
  return result
end
puts say_goodnight('uncle') #=> Good night, Uncle

def say_goodnight(name)
"Good night, #{name.capitalize}"
end
puts say_goodnight('ma') #=> Good night, Ma

=begin
Local Variable: name fish_and_chips x_axis thx1138 _x _26
Instance Variable: @name @point_1 @X @_ @plan9
Class Variable: @@total @@symtab @@N @@x_pos @@SINGLE
Global Variable: $debug $CUSTOMER $_ $plan9 $Global
Class Name: String ActiveRecord MyClass
Constant Name: FEET_PER_MILE DEBUG
=end                                