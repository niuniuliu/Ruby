# good_dog.rb
#!/usr/bin/env ruby -wKU

=begin
class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Spark")

fido = GoodDog.new("Fido")
# puts fido.speak             # => Arf!

p sparky.speak

p sparky.name
=end

=begin
class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_name=(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end

end

sparky = GoodDog.new("Spark")
puts sparky.speak
# sparky.get_name    = "tim"
puts sparky.get_name
sparky.set_name = "Tim"
p sparky.speak
=end

class GoodDog
  attr_accessor :name, :height, :weight

  # def initialize(name)
  #   @name = name
  # end

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} say arf!"
    # "#{@name} say arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weight #{weight} and is #{height} tall."
  end

  def call_info
    puts "calling #{self.info}."
  end

end

# sparky = GoodDog.new("Sparky")
# puts sparky.speak
# puts sparky.name

# sparky.name = "Spartacus"
# puts sparky.name

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
puts sparky.info

sparky.change_info("Spartacus", "24 inches", "20 lbs")
puts sparky.info

sparky.call_info
