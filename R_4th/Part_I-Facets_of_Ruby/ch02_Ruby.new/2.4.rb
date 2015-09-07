#---
# Excerpted from "Programming Ruby 1.9 and 2.0",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby4 for more book information.

def walk(direction)
  if direction == :north
    puts "You're walking north"
  end
end

walk :south # nothing is output
walk :north

#--- http://media.pragprog.com/titles/ruby4/code/intro/hash_with_symbol_keys.rb
 inst_section = {
   :cello     => 'string',
   :clarinet  => 'woodwind',
   :drum      => 'percussion',
   :oboe      => 'woodwind',
   :trumpet   => 'brass',
   :violin    => 'string'
 }
 p inst_section[:oboe]     # => "woodwind"
 p inst_section[:cello]    # => "string"
 # Note that strings aren't the same as symbols...
 p inst_section['cello']   # => nil
 
  #--- http://media.pragprog.com/titles/ruby4/code/intro/hash_with_symbol_keys_19.rb
inst_section = {
  cello:    'string',
  clarinet: 'woodwind',
  drum:     'percussion',
  oboe:     'woodwind',
  trumpet:  'brass',
  violin:   'string'
}
puts "An oboe is a #{inst_section[:oboe]} instrument"