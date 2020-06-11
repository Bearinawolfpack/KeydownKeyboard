#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>START>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


# The Fundamentals of Self
# 060320
# Corey Lynch


#------------------------------------------------------------------------


require 'pry'


#------------------------------------------------------------------------

# # create a dog class like this
# class Dog
# 	attr_accessor :name

# 	def initialize(name)
# 		@name = name
# 	end

# 	def bark
# 		"Woof!"
# 	end
# end
# # create a new instance of dog like this.
# fido = Dog.new("Fido")
# # access Fido's name like this.
# fido.name
# #=> "Fido"
# # tell Fido to bark like this.
# fido.bark
# #=> "Woof!"


#------------------------------------------------------------------------


# # every object is self aware.
# class Dog
# 	def showing_self
# 		puts self
# 	end
# end
# #=> :showing_self

# # when we call #showing_self on fido, the method will puts out to the 
# # terminal the Dog instance that is fido. Remember, puts returns nil
# fido = Dog.new
# #=> #<Dog:0x00007fe2fd8e6010>
# fido.showing_self
# #=> #<Dog:0x00007fe2fd8e6010>
# #=> nil


#------------------------------------------------------------------------


# class Dog
# 	attr_accessor :name, :owner

# 	def initialize(name)
# 		@name = name
# 	end
# end

# # fido.owner = "Sophie"

# # fido.owner
# #=> "Sophie"

# def adopted(dog, owner_name)
# 	dog.owner = owner_name
# end

# adopted(fido, "Sophie")

# fido.owner
# #=> "Sophie"


#------------------------------------------------------------------------


# refactor of above
class Dog
	attr_accessor :name, :owner

	def initialize(name)
		@name = name
	end

	def bark
		"Woof!"
	end

	def get_adopted(owner_name)
		self.owner = owner_name
	end
end



























#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>END>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>