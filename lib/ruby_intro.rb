# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  if arr.length == 0
    return 0
  else
    return arr.inject(:+)
  end
end

def max_2_sum(arr)
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    sum = arr.sort[-1]+arr.sort[-2]
    return sum
  end
end

def sum_to_n?(arr, n)
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  name = "Hello, "+name
  return name
end

def starts_with_consonant?(s)
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4?(s)
  if s.to_s =~ /\b[01]+\b/
    if s.to_i % 4 == 0
      true
    end
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty?||price<=0
    @isbn = isbn
    @price = price
  end
  def isbn=(a)
    @isbn = a
  end
  def price=(a)
    @price = a
  end
  def price_as_string
    newPrice = '%.2f' % @price
    return "$"+newPrice
  end
end
