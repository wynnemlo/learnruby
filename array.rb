# array.rb
# 1 
arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.include?(3)
	puts "Array does include #{number}"
end

# 2
# (1)
# returns 1
# arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# (2)
# returns [1, 2, 3]
# arr = [["b"], ["a", [1, 2, 3]]]

# 3
arr = [["test", "hello", "world"],["example", "mem"]]
arr.last.first

# 4
arr = [15, 7, 18, 5, 12, 8, 5, 1]
# arr.index(5) = 3
# arr.index[5] = Error
# arr[5] = 8

# 5
# string = "Welcome to Tealeaf Academy!"
# a = string[6] => e
# b = string[11] => T
# c = string[19] => A

# 6
# You're calling the index of "margaret" of an array, but you should call names[3]

#7
arr = [1, 3, 5, 7, 9, 11]
new_arr = arr.map{ |x| x + 2 }
p arr
p new_arr
