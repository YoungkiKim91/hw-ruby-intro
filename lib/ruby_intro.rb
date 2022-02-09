# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
    b = arr.sort
    c = b.at(-2)
    d = b.at(-1)
    return c.to_i + d.to_i
end

def sum_to_n? arr, n
  if arr.combination(2).any? { |a, b| a + b == n } == true
    return true
  else 
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.empty?
    return false
  elsif "bcdfghjklmnpqrstvwxyz".include?(s[0].downcase)
    return true
  end
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  elsif s.match? /[[:alpha:]]/
    return false
  elsif s.to_i % 4 == 0
    return true
  end
end

# Part 3

class BookInStock
  def initialize isbn, price
    @isbn = isbn
    @price =price
    raise ArgumentError if isbn.length ==0
    raise ArgumentError if price <= 0
  end
  attr_accessor :isbn, :price
  
  def price_as_string
    return "$%0.2f" % @price
  end
end