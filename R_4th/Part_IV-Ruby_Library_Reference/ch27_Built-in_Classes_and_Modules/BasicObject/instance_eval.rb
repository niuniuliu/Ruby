class KlassWithSecret
  def initialize
    @secret = 99
  end
end
k = KlassWithSecret.new
p k.instance_eval { @secret }   #=> 99

class Recorder < BasicObject
  attr_reader :__calls__
  def method_missing(name, *args, &block)
    @__calls__ ||= []
    @__calls__ << [ name, args ]
  end
  def record(&block)
    instance_eval(&block)
  end
end
r = Recorder.new
r.record do
  disable "safety"
  pull "control rod", dir: "out"
  run
end
p r.__calls__