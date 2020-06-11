require 'sqlite3'
require_relative '../lib/song.rb'

# DB is equal to a hash that contains our connection to the database.
DB = {:conn => SQLite3::Database.new("db/music.db")}
# In our lib/song.rb file, we can therefore access the DB constant and the database connection it holds like this:
# DB[:conn]