class BlockExample
	
  CONST = 0
  @@a = 3
  
  def return_closure
    a = 1
    @a = 2
    lambda { [ CONST, a, @a, @@a, yield ] }
  end
  
  def change_values
    @a += 1
    @@a += 1
  end
  
end

eg = BlockExample.new
block = eg.return_closure { "original" }
p block.call # => [0, 1, 2, 3, "original"]

eg.change_values
p block.call # => [0, 1, 3, 4, "original"]

