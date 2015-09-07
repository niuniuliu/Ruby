
class Class1
  def hello
    "hello"    
  end  
end

class Class2 < Class1
  alias old_hello hello
  def hello
    "Hello, this is class 2"
    "#{old_hello}, this is old"
  end
end

obj = Class2.new

# p obj.old_hello
# p obj.hello 


class Class3 < Class1
  # alias old_hello hello
  # undef hello
  def x
    "Hello, this is class 2"
    # "#{old_hello}, this is old"
  end
end

cls3 = Class3.new

p cls3.hello
p cls3.x
