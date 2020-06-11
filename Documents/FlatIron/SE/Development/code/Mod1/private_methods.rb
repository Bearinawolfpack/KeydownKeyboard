#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>START>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


# Private Methods
# 060320
# Corey Lynch


#------------------------------------------------------------------------


require 'pry'


#------------------------------------------------------------------------


class Bartender
	attr_accessor :name
	# upcase means constant
	BARTENDERS = []

	def initialize(name)
		@name = name
		# shovels each instance into BARTENDERS=[]
		BARTENDERS << self
	end

	def self.all
		BARTENDERS
	end
	# instance method because we can call it on an instance of Bartender class
	def intro
		"Hello, my name is #{name}!"
	end

	def make_drink
		@cocktail_ingredients = []

		choose_liquor
		choose_mixer
		choose_garnish
		
		return "Here is your drink. It contains #{@cocktail_ingredients}"
	end


	private

	def choose_liquor
		@cocktail_ingredients.push("whiskey")
	end

	def choose_mixer
		@cocktail_ingredients.push("vermouth")
	end
	
	def choose_garnish
		@cocktail_ingredients.push("olives")
	end
end

phil  = Bartender.new("Phil")
nancy = Bartender.new("Nancy")

# phil.intro
Bartender.all

# phil.initialize
#=> NoMethodError: private method `initialize' called for #<Bartender:0x00007fcf088bc188 @name="Phil">
# from (pry):1:in `<main>'

# phil.choose_liquor
#=> NoMethodError: private method `choose_liquor' called for #<Bartender:0x00007faddc8c1720 @name="Phil">
# from (pry):1:in `<main>'

phil.make_drink

binding.pry





































#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>END>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>