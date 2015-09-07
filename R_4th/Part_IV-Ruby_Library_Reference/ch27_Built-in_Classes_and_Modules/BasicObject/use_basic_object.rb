p BasicObject.instance_methods.sort
# produces:
# [:!, :!=, :==, :__id__, :__send__, :equal?, :instance_eval, :instance_exec, :object_id]
class MyObjectSystem < BasicObject
  DELEGATE = [:puts, :p, :inspect]

  def method_missing(name, *args, &block)
    super unless DELEGATE.include? name
    ::Kernel.send(name, *args, &block)
  end

  def respond_to_missing?(name, include_private = false)
    DELEGATE.include?(name) or super
  end
  
  def self.const_missing(name)
    ::Object.const_get(name)
  end
end

mos = MyObjectSystem.new
puts mos.inspect
puts mos.method_missing(:puts).inspect
puts mos.method_missing(:puts, "the args").inspect
a_block = lambda {p "a block"}
puts mos.method_missing(:puts, "a string arg", a_block).inspect
puts mos.respond_to_missing?(:p).inspect
puts mos.respond_to_missing?(:to_s).inspect