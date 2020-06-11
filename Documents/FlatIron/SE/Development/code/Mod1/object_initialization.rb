#>>>>>>>>>>>>>>>>>>>>>>>>START>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


# Object Initialization
# 060120
# Corey Lynch


#------------------------------------------------------------------------


require 'pry'


#------------------------------------------------------------------------


# Review

# class Dog
#     # creates a method to store breed
#     def breed=(breed)
#         @breed = breed
#     end
#     # creates a method to to call to get the stored breed
#     def breed
#         @breed
#     end
# end


# snoopy = Dog.new
# #=> Object ID
# snoopy.breed
# #=> nil
# snoopy.breed = "Beagle"

# snoopy.breed
# #=> "Beagle"


class Dog
    def initialize(breed)
        @breed = breed
    end

    def breed=(breed)
        @breed = breed
    end

    def breed
        @breed
    end
end

# the arguement "Collie" is passed to the initialize method '(breed)'. This is known as a callback method because it is automatically invoked everytime the '.new' method is used to create a new instance of the class.
lassie = Dog.new("Collie")

lassie.breed
#=> "Collie"




































#>>>>>>>>>>>>>>>>>>>>>>>>END>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

