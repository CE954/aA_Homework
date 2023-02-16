def sum_to(n)
    return nil if n < 0
    return 1 if n == 1 
    n + sum_to(n - 1)
end

# sum_to(5) => 5 + 4 + 3 + 2 + 1 = 15
#              5 + sum_to(4) 
# sum_to(4) => 4 + sum_to(3)... 

# p sum_to(5)  # => returns 15
# p sum_to(1)  # => returns 1
# p sum_to(9)  # => returns 45
# p sum_to(-8)  # => returns nil

def add_numbers(nums_arr)
    return nil if nums_arr.empty? 
    return nums_arr.first if nums_arr.length <= 1

   nums_arr.pop + add_numbers(nums_arr)
end

# p add_numbers([1,2,3,4]) # => returns 10
#    #4 + add_numbers([1,2,3])
#    #3 + add_numbers([1,2])
#    #2 + add_numbers([1])
#    #add_numbers([1]) => 1
# p add_numbers([3]) # => returns 3
# p add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil

def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?

  return true if flavors.first == favorite
 
  p flavors[1..-1]
  ice_cream_shop(flavors[1..-1], favorite)
end

# p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# p ice_cream_shop([], 'honey lavender')  # => returns false



def reverse(string)
    return "" if string.empty?
    reverse(string[1..-1]) + string[0]
end

# p reverse("house") # => "esuoh"
# p reverse("dog") # => "god"
# p reverse("atom") # => "mota"
# p reverse("q") # => "q"
# p reverse("id") # => "di"
# p reverse("") # => ""