#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>START>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


# Object Relationships
# 060320
# Corey Lynch


#------------------------------------------------------------------------


require 'pry'


#------------------------------------------------------------------------


class Dog
	attr_reader :name, :size, :temperament

	def initialize(name, size, temperament)
		@name        = name
		@size        = size
		@temperament = temperament
	end

	def bark
		if quiet?
			puts "#{name}, the #{size} dog, says rf"
		else
			puts "#{name}, the #{size} dog, says RUFF!"
		end
	end

	def quiet?
		temperament == 'quiet'
	end
end


#------------------------------------------------------------------------


# we create a new class like this
class Song
	attr_accessor :title, :artist

	def initialize(title)
		@title = title
	end
end
# we can create a new song like this
hotline_bling = Song.new("Hotline Bling")
# And we can return it's title to us like this:
hotline_bling.title

hotline_bling.artist = "Drake"
hotline_bling.artist
#=> "Drake"

# hotline_bling.artist.genre
# NoMethodError: undefined method `genre' for "Drake":String

# binding.pry


class Artist
	attr_accessor :name, :genre

	def initialize(name, genre)
		@name  = name
		@genre = genre
	end
end

drake = Artist.new("Drake", "rap")

hotline_bling = Song.new("Hotline Bling")

hotline_bling.artist = drake

hotline_bling.artist.genre
#=> "rap"

hotline_bling.artist.name
#=> "Drake"


binding.pry



























#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>END>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>