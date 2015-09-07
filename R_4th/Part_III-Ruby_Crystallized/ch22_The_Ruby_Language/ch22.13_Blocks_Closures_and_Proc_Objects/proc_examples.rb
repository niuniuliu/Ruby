def meth1(p1, p2, &block)
  puts block.inspect
end

p meth1(1,2) { "a block" }
p meth1(3,4)
# produces:
##<Proc:0x007f97cb12c400@prog.rb:30>
# nil
# nil
# nil

block = Proc.new { "a block" }
p block # => #<Proc:0x007fd4a4064638@prog.rb:38>

block = lambda { "a block" }
p block # => #<Proc:0x007f9d4c12c5c8@prog.rb:41 (lambda)>

lam = ->(p1, p2) { p1 + p2 }
p lam.call(4, 3) # => 7

block = lambda {|p1, p2| p1 + p2 }
p block.(4, 3) 