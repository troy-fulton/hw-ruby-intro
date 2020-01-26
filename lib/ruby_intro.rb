# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  for elem in arr
    sum += elem
  end
  sum
end

def max_2_sum arr
  if arr.size == 0
    return 0
  end
  if arr.length < 2
    return arr[0]
  end
  arr = arr.sort.reverse
  return arr[0] + arr[1]
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  end
  # Not the most efficient method... but drop each element
  # one at a time and try summing it with each of the others
  tmp_arr = arr
  for test_op1 in arr
    tmp_arr = tmp_arr.drop(1)
    for test_op2 in tmp_arr
      if test_op1 + test_op2 == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  s =~ /^[b-df-hj-np-tv-z]/i
end

def binary_multiple_of_4? s
  # Has to be either a 0 or end with 00
  # Gives nil (falsey) otherwise
  s =~ /^0$|00$/ unless s =~ /[^01]/
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if price <= 0 or isbn.length == 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn, :price
  
  def price_as_string
    # A little gross, but fits on one line!
    # "$#{@price.round(2)}" gives what you want in the common case, but when
    # there is no tens place in the decimal, a regex matcher will find the "."
    # at the index two less than the size of that string, in which case, one 
    # more 0 needs to be added
    ("$#{@price.round(2)}".length - ("$#{@price.round(2)}" =~ /\./)) == 2 ? "$#{@price.round(2)}" + "0" : "$#{@price.round(2)}"
  end
end
