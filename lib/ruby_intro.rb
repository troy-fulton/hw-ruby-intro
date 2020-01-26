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
    ("$#{@price.round(2)}".length - ("$#{@price.round(2)}" =~ /\./)) == 2 ? "$#{@price.round(2)}" + "0" : "$#{@price.round(2)}"
  end
end