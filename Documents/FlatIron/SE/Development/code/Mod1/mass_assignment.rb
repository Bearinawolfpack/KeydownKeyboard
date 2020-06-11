

# Mass Assignment
# 060920
# Corey Lynch

#------------------------------------------------------------------------

### KEYWORD ARGUMENTS

# def happy_birthday(name: "Beyonce", current_age: 31)
#     puts "Happy Birthday, #{name}"
    
#     current_age += 1
    
#     puts "You are now #{current_age} years old"
# end

# Here, we've defined our method to take in keyword arguments. Our keyword arguments consist of two key/value pairs, :name and :current_age. We've given our keyword arguments default values of "Beyonce" and 31, but we didn't have to:

def happy_birthday(name:, current_age:)
    puts "Happy Birthday, #{name}"

    current_age += 1

    puts "You are now #{current_age} years old"
end

happy_birthday(current_age: 31, name: "Carmelo Anthony")

#=>  "Happy Birthday, Carmelo Anthony"
    # "You are now 32 years old"

# Notice that we can reference name and current_age inside our method body, as if they were barewords, even though they are the keys in our argument hash.

def rat_counter(rat_count:, train_line:)
    "There are #{rat_count} rats on the #{train_line}."
end

rat_counter(rat_count: 2, train_line: "B train")
#=> "There are 2 rars on the B train."


### MASS ASSIGNMENT

# class Person
    
#     attr_accessor :name, :age
#     # this is vulnerable to misassignment
#     def initialize(name, age)
#         @name = name
#         @age  = age
#     end
# end

# refactor
class Person

    attr_accessor :name, :age

    # uses keys like this enables mass assignment
    def initialize(name:, age:)
        @name = name
        @age  = age
    end

    def self.all
        @@all
    end
end

person_attributes = {name: "Sophie", age: 26}

puts sophie = Person.new(person_attributes)
#=> #<Person:0x00007fcb5f078f28>