#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>START>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


# Remembering Objects
# 060320
# Corey Lynch


#------------------------------------------------------------------------


require 'pry'


#------------------------------------------------------------------------


class Song
	# it is not the reponsibility of each song to know about each other song. For that we can use a class variable because each song instance is within the class scope.
	@@all = []

	attr_accessor :name

	def initialize(name)
		@name = name
		# it makes sense to begin keeping track of our songs when they are first created (instantiated)
		@@all << self
		# self is used to refer to current scope. Self is in instance scope right now and points to the object being created as a result.
	end
	# getter method for class variable @@all
	def self.all
		@@all
	end
end

hotline_bling        = Song.new("Hotline Bling")
thriller             = Song.new("Thriller")
ninety_nine_problems = Song.new("99 Problems")

Song.all

binding.pry





































#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>END>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>