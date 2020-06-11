#>>>>>>>>>>>>>>>>>>>>>>>>>START>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


# Corey Lynch
# 060120
# Instance Methods


#------------------------------------------------------------------------

# New Class
class Dog
    # We can define methods in out class. Objects belonging to the class can then call those class methods.
    def bark
        puts "Woof!"
    end
END
# instantiating the class (creating new instance and assigning it to the variable)
fido = Dog.new

# displays unique spot in memory. An object's id is equivalent to said object.
fido.object_id

# we call objects with dot notation.
"Strings are instances and objects too".reverse

# the .methods mehod will display all methods target object responds to.
fido.methods

# fido belongs to the class Dog. The bark methods belongs to the class Dog. As a result, the fido object can call the bark method using dot notation.
fido.bark

snoopy = Dog.new
snoopy.bark
#=> "Woof!"

# the Dog class has no method called sit that belongs to it.
fido.sit
#=> NoMethodErro

# objects that don't belong to a class cannot access features of that class.
bark
#=> NameError: undefined....









































#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>END>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>