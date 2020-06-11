#>>>>>>>>>>>>>>>>>>>>START>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


# Object Accessors
# 060220
# Corey Lynch


#------------------------------------------------------------------------


# takes a num and returns a num
def plus_three(num)
    num + 3
end


mantra = ["Don't", "Repeat", "Yourself"]

mantra.map do |word|
    word[0]
end
#=> ["D", "R", "Y"]


# using Explicit Method Definitions
class Person
    def name=(name)
        @name = name
    end

    def name
        @name
    end
end





# Classer setter and getter using macros (atrr_reader, attr_writer, attr_accessor)
class Person
    attr_reader :name
    
    attr_writer :name
end

jay_z = Person.new

jay_z.name = "Shawn Carter"

jay_z.name
#=> "Shawn Carter"


# attr_accessor = attr_reader and attr_writer
class Person
    attr_accessor :name
end






























#>>>>>>>>>>>>>>>>>>>>END>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>