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
p my_min_2(list) #=> O(n)

def largest_contiguous_sub_sum1(list)
    i = 0
    array_subsets = []

    while i < list.length
    j = i 

        while j < list.length
            array_subsets << list[i..j]
            j += 1
        end
    i += 1
    end
    max = array_subsets[0].sum
    array_subsets.each do |subset|
        max = subset.sum if subset.sum > max
    end
    max
end

p largest_contiguous_sub_sum1([5, 3, -7]) #
p largest_contiguous_sub_sum1([2, 3, -6, 7, -6, 7])
p largest_contiguous_sub_sum1([-5, -1, -3])

def largest_contiguous_sub_sum2(list)
    current_sum = list[0]
    longest_sum = list[0]

    (1...list.length).each do |i|
        if list[i] > current_sum + list[i]
            current_sum = list[i]
        else
            current_sum = (current_sum + list[i])
        end

        longest_sum = current_sum if current_sum > longest_sum
    end
    longest_sum
end

p largest_contiguous_sub_sum2([5, 3, -7]) 
p largest_contiguous_sub_sum2([2, 3, -6, 7, -6, 7])
p largest_contiguous_sub_sum2([-5, -1, -3])