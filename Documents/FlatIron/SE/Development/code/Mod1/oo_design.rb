#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>START>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


# Object Oriented Design
# 060320
# Corey Lynch


#------------------------------------------------------------------------


require 'pry'


#------------------------------------------------------------------------

# Creating a class that defines too many objects quickly gets out of 
# control and becomes hard to manage in the future.
# class MyStore
# 	def sign_in(user)
# 		@user = user		
# 	end

# 	def current_user
# 		@user
# 	end

# 	def item(item)
# 		@item = item
# 	end

# 	def item_price=(item, price)
# 		@item_price = price
# 	end

# 	def shopping_cart
# 		@shopping_cart = []
# 	end

# 	def add_item_to_cart(item)
# 		@shopping_cart << item
# 	end

# 	...

# end


# def checkout(discount=0)
# 	total = 0
#	# the shopping_cart method holds an array of all the user's items.
# 	shopping_cart.each do |item|
# 		total += item.price
# 	end

# 	if discount == 10
# 		total -= (total * 10 / 100.00)
# 	elsif discount == 20
# 		total -= (total * 20 / 100.00)
# 	elsif discount == 50
# 		total -= (total * 50 / 100.00)
# 	end
# 	total	
# end

# refactor of above.
# class ShoppingCart
# 	attr_accessor :coupon

# 	def checkout
# 		total = 0
# 		# the shopping_cart method holds an array of all the user's items.
# 		shopping_cart.each do |item|
# 			total += item.price
# 		end
# 		# helper method to checkout method.
# 		if coupon
# 			total -= (total * coupon / 100.00)
# 		end
# 		total
# 	end
# end

# refactor of above.
def checkout
	total = shopping_cart.inject {|sum, item| sum + item.price}

	...
end















































#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>END>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>