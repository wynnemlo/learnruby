# question 1

# [1, 2, 3, 4, 5]

# question 2

input = ""

while input != "STOP" do
	puts "Say something!"
	input = gets.chomp
	puts "You said... #{input}!"
end

# question 3

array = ["Bob", "Mary", "Tiffany", "Sharks"]

array.each_with_index{ | item, i |
		puts "#{item}, with index #{i}"
}

# question 4

def countdown(n)
	if n <= 0
		puts 0
	else
		puts n
		countdown(n - 1)
	end 
end

countdown(10)