# flow_control.rb

# question 1
# 1. false
# 2. false
# 3. false
# 4. true
# 5. true

# question 2

def allcaps(words)
	if words.length > 10
		words.upcase
	else 
		words
	end
end

puts allcaps("Hi there!")
puts allcaps("Hi I am longer than 10 characters.")

# question 3

def what_number(num)
	if num < 0
		puts "Give me a number greater than 0!"
	elsif num <= 50
		puts "Your number is between 0 and 50."
	elsif num <= 100
		puts "Your number is between 51 and 100."
	else
		puts "Your number is greater than 100."
	end
end

puts "Give me a number between 0 and 100."
number = gets.chomp.to_i
what_number(number)

# question 4

# 1. FALSE
# 2. Did you get it right?
# 3. Alright now!

# question 5


def what_number2(num)
	case
	when num < 0
		puts "Give me a number greater than 0!"
	when num <= 50
		puts "Your number is between 0 and 50."
	when num <= 100
		puts "Your number is between 51 and 100."
	else
		puts "Your number is greater than 100."
	end
end

what_number2(number)

# question 6

# You're missing an end at your definition.
# Just add an end at the end.


