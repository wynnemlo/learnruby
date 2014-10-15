# intro_exercises.rb

# 1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |num|
	puts num
end

# 2
arr.each do |num|
	if num > 5
		puts num
	end
end 

# 3
new_arry = arr.select { |num| num % 2 != 0 }

# 4
arr.push(11)
arr.unshift(0)

# 5
arr.pop
arr.push(3)

# 6
arr.uniq!

# 7
# An array is ordered, does not have keys.
# A hash is ordered in Ruby 1.9+, and has key-value pairs.

# 8
h1 = {name: "Wynne", lname: "Lo"}
h2 = {:name => "Wynne", :lname => "Lo"}

# 9 
h = {a:1, b:2, c:3, d:4}
# (1)
h[:b]
h.[:e] = 5
h.delete_if { |k, v| v < 3.5 }

# 10

# Hash values can be arrays.
h = {name: "Wynne", favmovies: ["Happy Feet", "Kung Fu Panda"]}
# Yes, you can have an array of hash values.
[{name: "Bob", weight: 120},
 {name: "Wynne", weight: 110}]

# 11

# I think I still like the official documentation the most
# as that's what I got used to.
# However, rubydocs.org is also helpful as it puts the official
# documentation into a more readable format.

# 12

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# 13

contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

# 14

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
	fields.each do |field|
		hash[field] = contact_data.shift
	end
end

# 15

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?("s")}
arr.delete_if { |word| word.start_with?("s", "w")}

# 16

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.map { |word| word.split(" ")}.flatten

# 17
# These hashes are the same!