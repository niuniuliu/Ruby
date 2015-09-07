module FooMethod
  def foo
    self
  end
  module_function :foo
end

p FooMethod.foo

