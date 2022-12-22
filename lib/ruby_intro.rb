# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum()
end

def max_2_sum arr

  sum = 0

  if arr.length == 0 
    return 0
  elsif arr.length == 1
    return arr[0]  
  else  
    maxTwo = arr.max(2)
    sum += maxTwo[0] + maxTwo[1]
    return sum
  end  
  
end

def sum_to_n? arr, n

  if arr.length == 0 || arr.length == 1
    return false 
  else 
      for i in 0...arr.length
          for j in i+1...arr.length
              if arr[i] + arr[j] == n
                  return true
                  break    
              end    
          end    
      end
      return false
  end  
  
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant? s

  vowels = ['a', 'e', 'i', 'o', 'u']

  if (s =~ /[^a-zA-Z0-9]/).nil? and vowels.include? s.chr.downcase
    return false
  elsif s.empty? || !(s =~ /[^a-zA-Z0-9]/).nil?
    return false
  else
    return true 
  end    

end

def binary_multiple_of_4? s
  
  sum = 0
  n = s.length - 1

  if !(s =~ /[A-Za-z]/).nil? || s.empty?
    return false
  else  
    for i in 0...s.length
      if s[i] == '1'
        sum += 2 ** n
      end  
      n -= 1
    end  

    if sum % 4 == 0
      return true
    else
      return false  
    end  
  end  

end

# Part 3

class BookInStock

  
  def initialize(isbn, price)
    if !isbn.empty? and price > 0
      @isbn = isbn
      @price = price
    else
      raise ArgumentError
    end  
  end

  attr_accessor :isbn, :price

  def price_as_string()
    return "$#{'%.2f' % price}"
  end  

end
