#---
# Excerpted from "Programming Ruby 1.9 and 2.0",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby4 for more book information.

#--- http://media.pragprog.com/titles/ruby4/code/intro/cmd_line.rb
puts "You gave #{ARGV.size} arguments"
p ARGV

# $ ruby cmd_line.rb ant bee cat dog
# You gave 4 arguments
# ["ant", "bee", "cat", "dog"]
