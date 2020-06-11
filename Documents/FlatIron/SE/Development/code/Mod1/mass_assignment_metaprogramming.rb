

# Mass Assignment and Metaprogramming
# 060920
# Corey Lynch

#------------------------------------------------------------------------

# class User
    
#     attr_accessor :name, :age, :location, :user_name

#     def initialize(user_name:, name:, age:, location:)
#         @user_name = user_name
#         @age       = age
#         @name      = name
#         @location  = location
        
#     end
# end

# twitter_user = {
#     name: "Sophie",
#     user_name: "sm_debenedetto",
#     age: 26,
#     location: "NY, NY"
# }
### Shows us how mass assignment works
# p sophie = User.new(twitter_user)
# => #<User:0x00007fc715868510 @user_name="sm_debenedetto", @age=26, @name="Sophie", @location="NY, NY">


### demonstrates what happens when there is a missing keyword
# twitter_user2 = {
#     name: "Sophie",
#     user_name: "sm_debenedetto",
#     location: "NY, NY"
# }

# p tom = User.new(twitter_user2)
# #=> mass_assignment_metaprogramming.rb:13:in `initialize': missing keyword: age (ArgumentError)


###  demonstrates what happens when there is an extra keyword
# newest_twitter_user = {
#     name: "Sophie", 
#     user_name: "sm_debenedetto", 
#     age: 26, 
#     location: "NY, NY", 
#     bio: "I'm a programmer living in NY!"
# }

# phil = User.new(newest_twitter_user)
#=> mass_assignment_metaprogramming.rb:13:in `initialize': unknown keyword: bio (ArgumentError)

class User

    attr_accessor :name, :user_name, :age, :location, :bio

    # we iterate over each key/value pair in the attributes hash.
    def initialize(attributes)
        # The name of the key becomes the name of a setter method
        attributes.each {|key, value| self.send(("# {key}="), value)}
        # the value associated with the key is the name of the value you want to pass to that method
    end
    
end
























