#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>START>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


# Has Many Object
# 060320
# Corey Lynch


#------------------------------------------------------------------------


require 'pry'


#------------------------------------------------------------------------


# class Song
# 	attr_accessor :artist, :name, :genre

# 	def initialize(name, genre)
# 		@name  = name
# 		@genre = genre
# 	end
# end


# class Artist
# 	attr_accessor :name

# 	def initialize(name)
# 		@name  = name
# 		# initialize with an Empty Collection
# 		@songs = []
# 	end
# 	# adding items to the collection
# 	def add_song(song)
# 		# we put the song collection in the Artist classs b/c it's the artist's responsibility to add their songs to their repertoire.
# 		@songs << song
# 		# telling a song that it belongs to an artist should happen when that song is added to the artist's @song collection.
# 		song.artist = self
# 		#self here refers to the artist being called. The artist setter method on the song that is being passed in as an argument and set it equal to seld - the artist.
# 	end
# 	# exposing the collection
# 	def songs
# 		@songs
# 	end
# end



# drake = Artist.new("Drake")

# # kiki.artist = drake

# # kiki.artist.name
# #=> "Drake"

# kiki    = Song.new("In My Feelings", "hip-hop")
# hotline = Song.new("Hotline Bling", "pop")

# drake.add_song(kiki)
# drake.add_song(hotline)


# # drake.add_song("In My Feelings")
# # drake.add_song("Hotline Bling")

# drake.songs

# drake.songs.collect do |song|
# 	song.genre
# 	# binding.pry
# end
# #=> ["hip-hop", "pop"]

# kiki.artist.name

# # with this current setup we have two sources of truth:
# lil_nas_x = Artist.new("Lil Nax X")

# old_town_road = Song.new("Old Town Road", "hip-hop")

# old_town_road.artist = lil_nas_x

# old_town_road.artist.name
# #=> "Lil Nas X"
# lil_nas_x.songs
# #=> []

# binding.pry


#------------------------------------------------------------------------

# Creating a single source of truth.

class Song
	attr_accessor :artist, :name, :genre

	@@all = []

	def initialize(name, genre)
		@name = name
		@genre = genre
		save
	end

	def save
		@@all << self
	end

	def self.all
		@@all
	end
end


class Artist
	attr_accessor :name

	def initialize(name)
		@name  = name
		@songs = []
	end
	
	def add_song(song)
		@songs << song
		
		song.artist = self
	end

	# def songs
	# 	Song.all.select { |song| song.artist == self }
	# end

	def add_song_by_name(name, genre)
		song = Song.new(name, genre)
		song.artist = self
	end

	def artist_name
		self.artist.name
	end
end

lil_nas_x = Artist.new("Lil nas X")
rick      = Artist.new("Rick Astley")

old_town_road = Song.new("Old Town Road", "hip-hop")

never_gonna_give_you_up = Song.new("Never Gonna Give You Up", "pop")

old_town_road.artist = lil_nas_x

never_gonna_give_you_up.artist = rick

Song.all.first.name #=> "Old Town Road"
Song.all.first.genre #=> "hip-hop"
Song.all.first.artist #=> #<Artist:0x00007f994b8a9648 @name="Lil nas X", @songs=[]>
Song.all.first.artist.name #=> "Lil nas X"

Song.all.last.name #=> "Never Gonna Give You Up"
Song.all.last.genre #=> "pop"
Song.all.last.artist #=>#<Artist:0x00007f994b8a90d0 @name="Rick Astley", @songs=[]>
Song.all.last.artist.name #=> "Rick Astley"

Song.all.select { |song| song.artist == lil_nas_x }
#=> [#<Song:0x00007fdeeea2e7f0
#=> @artist=#<Artist:0x00007fdeeea2e930 @name="Lil nas X", @songs=[]>,
#=> @genre="hip-hop",
#=> @name="Old Town Road">]

Song.all.select { |song| song.artist == rick }
#=> [#<Song:0x00007fdeeea2e728
#=>  @artist=#<Artist:0x00007fdeeea2e890 @name="Rick Astley", @songs=[]>,
#=>  @genre="pop",
#=>  @name="Never Gonna Give You Up">]

# our two sources of truthes issue from before is now resolved with one source
lil_nas_x = Artist.new("Lil Nas X")
old_town_road = Song.new("Old Town Road","hip-hop")
 
old_town_road.artist = lil_nas_x
 
old_town_road.artist.name #=> "Lil Nas X"
lil_nas_x.songs #=> [#<Song:0x00007fb46b0a1c08 @name="Old Town Road", @genre="hip-hop", @artist=#<Artist:0x00007fb46b0e3748 @name="Lil Nas X">>]


# we can actually achieve more with just one source
rick = Artist.new("Rick Astley")
never_gonna_give_you_up = Song.new("Never Gonna Give You Up","pop")
rick.add_song(never_gonna_give_you_up)
 
rick.songs #=> [#<Song:0x00007fb46b0b97b8 @name="Never Gonna Give You Up", @genre="pop", @artist=#<Artist:0x00007fb46a903000 @name="Rick Astley">>]

never_gonna_give_you_up.artist #=> #<Artist:0x00007fb46a903000 @name="Rick Astley">

kiki.artist_name
#=> "Drake"


binding.pry

















#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>END>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>