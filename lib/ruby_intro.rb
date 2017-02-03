# When done, submit this entire file to the autograder.

# ==========================================================================
# 								Part 1
# ==========================================================================

def sum arr
	total = 0
	if arr.size > 0
		total = arr.reduce(:+)
	end

	return total
end

def max_2_sum arr
	total = 0
	if arr.size > 0
		arr_aux = arr.sort.last(2)
		total = arr_aux.reduce(:+)
	end
	return total
end

def sum_to_n? arr,n
	result = arr.combination(2).any? {|x, y| x + y == n}
	return result
end


# ==========================================================================
# 								Part 2
# ==========================================================================

def hello(name)
	s = "Hello, " + name
	return s
end


def starts_with_consonant? s
	return false if s.empty?
	
	if /^[aeiou\W]/i.match(s) == nil
		return true
	else
		return false
	end
end

def binary_multiple_of_4? s
	
	if /^[0-1]+$/.match(s) == nil
		return false
	end
	
	s_aux = s.to_i(2)
	if s_aux % 4 == 0
		return true
	else
		return false
	end
end


# ==========================================================================
# 								Part 3
# ==========================================================================

class BookInStock
	attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		self.isbn = isbn
		self.price = price
		
		if isbn.empty?
			raise ArgumentError, "ISBN should not be empty."
		end

		if price <= 0
			raise ArgumentError, "Price must be greater than zero."
		end
	end

	def price_as_string
		return "$%0.2f" % self.price
	end
end
