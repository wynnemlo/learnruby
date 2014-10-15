# more_stuff.rb

# 1

arr = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

arr.each do |word|
	if word =~ /lab/
		puts word
	end
end

# 2

# Nothing is executed because the block was not called. 
# It returns a proc object.

# 3

# It handles various errors. It allows the program to 
# continue running despite errors through the "rescue"
# function.

# 4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 5

# the (block) is missing the "&" symbol in front for it
# to be identified as a block.
