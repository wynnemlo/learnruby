# name.rb

puts "Hi there! What's your first name?"
first_name = gets.chomp
puts "How about your last name?"
last_name = gets.chomp
puts "Wow, nice to meet you, #{first_name} #{last_name}!"

10.times do |i|
	puts first_name + " " + last_name
end