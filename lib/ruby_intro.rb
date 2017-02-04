# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	if arr.size < 1
		return 0
	end
	return arr.reduce(:+)
end

def max_2_sum arr
	if arr.size < 1
		return 0
	end
	max2 = arr.max(2)
	return max2.reduce(:+)
end

def sum_to_n? arr, n
	matches = arr.combination(2).select { |a, b| a + b == n }
	return matches.size >= 1
end

# Part 2

def hello(name)
	return "Hello, " + name
end

def starts_with_consonant? s
	return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
	if s !~ /[^01]/
		if s.size == 1
			return s=="0"
		else return s.split(//).last(2).join == "00"
		end
	end
end

# Part 3

class BookInStock
	attr_reader :isbn
	attr_writer :isbn
	attr_reader :price
	attr_writer :price
  
	def initialize(isbn, price)
		unless isbn.size > 0 && price > 0
    		raise ArgumentError.new("Invalid input, please try again.")
		end
    	@isbn = isbn
    	@price = price
	end
	
	def price_as_string
		return format("$%.2f", price)
	end
end
