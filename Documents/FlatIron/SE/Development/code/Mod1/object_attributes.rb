#>>>>>>>>>>>>>>>>>>>>>>>START>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# Object Attributes
# 060220
# Corey Lynch


#------------------------------------------------------------------------


# class Person
#     # "Getter" method
#     def initialize(name)
#         @name = name
#     end

#     def name
#         @name
#     end
# end

# # Uses the Person class to instantiate an object named kanye with the name "Kanye".
# kanye = Person.new("Kanye")
# kanye.name
# # thus the object kanye is equal to the name "Kanye"
# #=> "Kanye"

# kanye.name = "Yeezy"
# #=> NoMethodError: undefined method...


# class Person
#     def initialize(name)
#         @name = name
#     end

#     def name
#         @name
#     end
#     # A setter method is defined with =(). The setter method will allow us to change Kanye's name.
#     def name=(new_name)
#         @name = new_name
#     end
# end

# # instantiate a Person instance amnd name hime "Kanye".
# kanye = Person.new("Kanye")

# # call our getter method, #name to return his name, "Kanye".
# kanye.name
# #=> "Kanye"

# # call our setter method #name= to change his name to, "Yeezy".
# kanye.name = "Yeezy"
# # alternatively, kanye.name=("Yeezy")

# # call our getter method again and see that kanye's name is not "Yeezy".
# kanye.name
# #=> "Yeezy"

# # in Ruby it is possible to set an instance variable with a method.
# kanye.instance_variable_set(:@name, "Yeezy")

# # to retrieve an instance variable from an object we use a method.
# kanye.instance_variable_get(:@name)
# #=> "Yeezy"


class Person
    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name  = last_name
    end

    def name=(full_name)
        first_name, last_name = full_name.split
        @first_name = first_name
        @last_name  = last_name 
    end

    def name
        "#{@first_name} #{@last_name}".strip
    end

end











































#>>>>>>>>>>>>>>>>>>>>>>>END>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>