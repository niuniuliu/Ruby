# class MyCar
#   def initialize(year, color, model)
#     @year = year
#     @color = color
#     @model = model
#     @current_speed = 0
#   end
  
#   def speed_up(number)
#     @current_speed += number
#   end

#   def brake(number)
#     @current_speed -= number
#   end

#   def current_speed
#     puts "You are now going #{@current_speed} mph."
#   end

#   def shut_down
#     @current_speed = 0
#     puts "Let's park this bad boy!"
#   end
# end

# lumina = MyCar.new(1997, "while", "cherry model")
# lumina.speed_up(20)
# lumina.current_speed
# lumina.speed_up(20)
# lumina.current_speed

# lumina.brake(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed

# lumina.brake(20)
# lumina.current_speed


# lumina.shut_down
# lumina.current_speed


class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_parin(color)
    # self.color = color
    # color
    puts "You new #{color} paint job looks great!"
  end

end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
# lumina.speed_up(20)
# lumina.current_speed

# puts lumina.color
# puts lumina.year

# # lumina.speed_up(20)
# # lumina.current_speed
# # lumina.brake(20)
# # lumina.current_speed
# # lumina.brake(20)
# # lumina.current_speed
# # lumina.shut_down
# # lumina.current_speed

# lumina.color = 'black'
# # lumina.year = 1998
# puts lumina.color
# puts lumina.year


puts

lumina.spray_parin('red')