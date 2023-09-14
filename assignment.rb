# ## `my_min`

# Given a list of integers find the smallest number in the list.

# Example:

# ```ruby
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# my_min(list)  # =>  -5``
# ```

# ### Phase I

# First, write a function that compares each element to every other element of the
# list. Return the element if all other elements in the array are larger.  
# What is the time complexity for this function?

def my_min_1(list)
    list.each do |ele|
     return ele if  list.all?  { |num| num >= ele}
    end 
end 

p my_min_1(list)  # =>  -5``O(n^2)
# ### Phase II

# Now rewrite the function to iterate through the list just once while keeping
# track of the minimum. What is the time complexity?

def my_min_2(list)
    num = list.shift
    list.each do |num2| 

        num =  num2 if num2 < num 

    end 

    return num 

end 
p my_min_2(list) => O(n)