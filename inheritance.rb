# 1, 2, 3, 4, 5, 6

require 'pry'

module Whistleable
	def whistle
		puts "Truck whistles!!!"
	end
end


class Vehicle

  @@number_of_vehicles = 0

  attr_accessor :color, :speed
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @time = Time.new
    @@number_of_vehicles += 1
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

  def self.number_of_vehicles
  	puts "You have #{@@number_of_vehicles} vehicles."
  end

  def to_s
  	puts "Your vehicle is #{color}. Its model is #{model} #{year}."
  end

  def age
  	puts "Your vehicle is #{years_old} years old."
  end

  private

  def years_old
  	Time.now.year - self.year
  end

end

class MyCar < Vehicle
	SIZE = "medium"
end

class MyTruck < Vehicle
	include Whistleable
	attr_accessor :inventory

	SIZE = "big"

	def initialize(year, color, model)
		super
		@inventory = []
	end

	def pickup(object)
		@inventory.push(object)
		puts "Picked up #{object}."
	end

	def inventory
		puts "Your inventory contains #{@inventory}."
	end

end

truck1 = MyTruck.new(2000, "blue", "landrover")
truck1.pickup("apples")
truck1.inventory
truck1.whistle

puts "---MyTruck method lookup---"
puts MyTruck.ancestors
puts "---MyCar merthod lookup---"
puts MyCar.ancestors
puts "---Vehicle merthod lookup---"
puts Vehicle.ancestors

puts truck1.age

# 7
class Student

	def initialize(name, grade)
		@name = name
		@grade = grade
	end

	def better_grade_than?(student)
		grade > student.grade
	end

	protected

	def grade
		@grade
	end
end

joe = Student.new("joe", 80)
bob = Student.new("bob", 70)
puts "Well done, Joe!" if joe.better_grade_than?(bob)
puts "Well done, Bob!" if bob.better_grade_than?(joe)

# 8
# Hi is a private method and cannot be called outside the class.
# Switch hi to a public method (move it above the "private" word).
