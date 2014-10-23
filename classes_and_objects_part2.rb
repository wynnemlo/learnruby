# 1

class MyCar
  attr_accessor :color, :speed
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speedup(mph)
    self.speed += mph
    puts "Speeding by up #{mph}. Current speed now #{speed}."
  end

  def brake(mph)
    self.speed -= mph
    puts "Slowing down by #{mph}. Current speed now #{speed}."
  end

  def shutoff
    self.speed = 0
    puts "Shut off. Speed now #{speed}."
  end

  def spray_paint(color)
    self.color = color
    puts "Your car is now #{color}."
  end

  def self.gas_mileage(gallons, miles)
  	puts "Your mileage is #{gallons / miles}."
  end

  def to_s
  	puts "Your car is #{color}. Its model is #{model} #{year}."
  end

end

# 3
# Your wrote attr_reader instead of attr_accessor.
