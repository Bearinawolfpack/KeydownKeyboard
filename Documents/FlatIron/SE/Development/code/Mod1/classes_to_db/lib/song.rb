

# Mapping Ruby Classes to Database Tables
# 061020
# Corey Lynch

class Song

    attr_accessor :name, :album, :id
    
    # The default value of the id argument is equal to nil then we can create new instances that do not have an id value. Leave that up to the database.
    def initialize(name, album, id=nil)
        # each table row needs an id value which is the primary key.
        @id = id
        @name = name
        @album = album
    end

    def self.create_table
        sql = <<-SQL
            CREATE TABLE IF NOT EXISTS songs (
                id INTEGER PRIMARY KEY,
                name TEXT,
                album TEXT
            )
            SQL
        DB[:conn].execute(sql)
    end
    
    def save
        # used heredoc '<<-' to create a multi-line statement
        sql = <<-SQL
            INSERT INTO songs (name, album)
            VALUES (?, ?)
        SQL
        # bound parameters '?, ?' help prevent sql injections

        # SQLite3-Ruby gem's #execute method will take the values we pass in as an argument and apply them as the values of the question marks.
        DB[:conn].execute(sql, self.name, self.album)
    end

    def self.create(name:, album:)
        song = Song.new(name, album)
        
        song.save
        
        song
    end

    # In building an ORM, it is conventional to pluralize the name of the class to create the name of the table.
    # def self.create_table
    #     sql = <<-SQL
    #         CREATE TABLE IF NOT EXISTS song (
    #             id INTEGER PRIMARY KEY,
    #             name TEXT,
    #             album TEXT
    #         )
    #         SQL
    #     DB[:conn].execute(sql)
    # end
    
end # end of Song class

# gold_digger = Song.new("Gold Digger", "Late Registration")

# gold_digger.name
# #=> "Gold Digger"

# gold_digger.album
# #=> "Late Registration"

# INSERT INTO songs (name, album) VALUES ("Gold Digger", "Late Registration")

# hello = Song.new("Hello", "25")

# hello.name
# #=> "Hello"

# hello.album
# #=> "25"

# INSERT INTO songs (name, album) VALUES ("Hello", "25")

# .save and .new should are not one in the same nor should creating an object have any dependance on adding a table.

# # create the songs table
# Song.create_table
# # create two new song instances
# hello = Song.new("Hello", "25")
# ninety_nine_problems = Song.new("99 problems", "The Black Album")
# # use the song.save method to persist them to the database
# hello.save
# ninety_nine_problems.save
# # we can create an instance method in our class to abstract these two-steps

song = Song.create(name: "Hello", album: "25")

song.name
#=> "Hello"

song.album
# => "25"