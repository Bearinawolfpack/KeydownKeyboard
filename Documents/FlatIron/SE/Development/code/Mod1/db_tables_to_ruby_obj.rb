

# Mapping Database Table to Ruby Objects
# 061020
# Corey Lynch


class Song
	# SQLite in our case, will return an array of data for each row.
	def self.new_from_db(row)
		# we are using new. With this method, we're reading data from SQLite and temporarily representing that data in Ruby.
		new_song = self.new

		new_song.id     = row[0]
		new_song.name   = row[1]
		new_song.length = row[2]
		new_song
	end

	def self.all
		# return all the songs in the database
		sql = <<-SQL
			SELECT *
			FROM songs
		SQL
		# This will return an array of rows from the database that matches our query.
		DB[:conn].execute(sql).map do |row|
			# all we have to do is iterate over each row and use the self.new_from_db method to create a new Ruby object for each row:
			self.new_from_db(row)
		end
	end

	def self.find_by_name(name)
		# we use a question mark where we want the name parameter to be passed in
		sql = <<-SQL
			SELECT *
			FROM songs
			WHERE name = ?
			LIMIT 1
		SQL
		# and we include name as the second argument to the execute method:
		DB[:conn].execute(sql, name).map do |row|
			self.new_from_db(row)
		# first element from the returned array.
		end.first
	end

end # end of Song class

# pry(Student)> row
# => [1, "Pat", "12"]
# pry(Student)> name
# => "Pat"






















