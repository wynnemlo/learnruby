# the_object_model

# 1.
# 2. A collection of methods that you can easily add onto classes.

module Eat
	def eat(food)
		puts "Ate #{food}."
	end
end

class Cats
	include Eat
end

yupi = Cats.new

yupi.eat("Pocky")