def meth1
  (1..10).each do |val|
    return val # returns from meth1
  end
end

p meth1 # => 1

# The following example shows a return failing because the context of its block no longer
# exists:
# def meth2(&b)
# b
# end
# res = meth2 { return }
# res.call
# produces:
# from prog.rb:6:in `call'
# from prog.rb:6:in `<main>'
# prog.rb:5:in `block in <main>': unexpected return (LocalJumpError)

# And here’s a return failing because the block is created in one thread and called in another:
# def meth3
# yield
# end
# t = Thread.new do
# meth3 { return }
# end
# t.join
# produces:
# from prog.rb:2:in `meth3'
# from prog.rb:6:in `block in <main>'
# prog.rb:6:in `block (2 levels) in <main>': unexpected return (LocalJumpError)

# This is also true if you create the raw proc using Proc.new.

def meth4
  p = Proc.new { return 99 }
  p.call
  puts "Never get here"
end

p meth4 # => 99

# A lambda behaves more like a free-standing method body: a return simply returns from the
# block to the caller of the block:

def meth5
  p = lambda { return 99 }
  res = p.call
  "The block returned #{res}"
end

p meth5