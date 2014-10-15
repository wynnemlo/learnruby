# hashes.rb

# 1
# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

new_array = []

family.select{ |k,v| (k == :sisters) || (k == :brothers) }.values.each do |val|
	val.each do |name|
		new_array << name
	end 
end

new_array.each { |x| puts x}

# 2

# merge

h1 = {name: "bob", height: 150, weight: 200}
h2 = {wife: "jill", children: 2, weight: 200}
p h1.merge(h2)
p h1

# merge!

p h1.merge!(h2)
p h1

# merge! alters the hash permanently

# 3

h1 = {name: "bob", height: 150, weight: 200}

h1.each_key { |key| puts key}
h1.each_value { |val| puts val}
h1.each { |key, val| puts "Key is: #{key}, value is #{val}" }

# 4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

# 5
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person.has_value?("Bob")

# 6

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end

# 7

# The first hash's key is a symbol, the second one's hash's key is a string.

# 8
#B