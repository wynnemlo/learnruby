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

end

toyota = MyCar.new(1988, "orange", "camry")
toyota.speedup(20)
toyota.brake(5)
toyota.shutoff

# 2