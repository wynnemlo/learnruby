# return.rb

def add_three(number)
	return number + 3
	number + 4
end

returned_value = add_three(4)
puts returned_value

def just_assignment(number)
	foo = number + 3
end

result = just_assignment(2)
p "Just assignment\'s result: #{result}"