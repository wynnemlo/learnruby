# 1.
# @a = 2
# => @a is an instance variable, and is a Fixnum object with value 2
# user = User.new
# => user is a new instance of the User class
# user.name
# => invokes the getter method of the instance variable name for the object "user", which is
# => an object of the User class.
# user.name = "Joe"
# => invokes the setter method, and sets the instance variable for the object "user" to "Joe"

# 2.
# Just write "include TheModuleYouWant"

# 3.
# Class variables can be accessed without an instance. It belongs to a class and is not tied
# to any particular instance. It is available to all of its descendants. It begins with the @@ symbol.
# An instance variable is tied to an instance. It begins with the @ symbol.

# 4.
# It automatically creates getter and setter methods for the instance variables you listed.

# 5.
# Dog is a class. some_method is a class method.

# 6.
# Subclassing means you inherit your parent's variables and methods.
# Mixing in means you just include certain functionalities into your class.

# 7.
# def initialize(name)
# 	@name = name
# end

# 8.
# Yes

# 9.
# Look at the error messages and see if that helps first.
# Then use 'pry'.
# Then use rubber-duck technique.