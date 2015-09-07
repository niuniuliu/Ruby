class KlassWithSecret
  def initialize
    @secret = 99
  end
end
k = KlassWithSecret.new
p k.instance_exec(5) {|x| @secret+x }   #=> 104
p k.instance_exec(10) {|x| @secret+x }  #=> 109

class Dummy < BasicObject
  def initialize
    @iv = 33
  end
  def double_and_call(value, &block)
    instance_exec(value*2, &block)
  end
end
d = Dummy.new
d.double_and_call(22) do |param|
  ::Kernel::puts "Parameter = #{param}"
  ::Kernel::puts "@iv = #{@iv}"
end