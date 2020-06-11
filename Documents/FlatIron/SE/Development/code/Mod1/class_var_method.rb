#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>START>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


# Introduction to Class Variables and Methods in Ruby
# 060320
# Corey Lynch


#------------------------------------------------------------------------


require 'pry'


#------------------------------------------------------------------------


class Album
	# class variable
	@@album_count = 0
	
	def initialize
		@@album_count += 1
	end

	# class method
	def self.count
		@@album_count		
	end

	def release_date=(date)
		@release_date = date
	end

	def release_date
		@release_date
	end
end

# instantiates album using the Album class
album = Album.new
# the album instance passes 1991 to class setter method realease_date
album.release_date = 1991
# the album instance calls class getter method release_date to return @release_date which the setter method set equal to date
album.release_date
#=> 1991
Album.new
Album.new
Album.new
Album.count
binding.pry










































#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>END>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>