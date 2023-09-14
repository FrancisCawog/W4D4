require "byebug"
# As a person of elevated algorithmic sensibilities, the brute-force approach is
# beneath you. Leave that nonsense to the riffraff. Instead, you'll apply a
# refined and time-honored technique: **sorting.**

# Sort your data, then try to solve the problem.

# 1. What does sorting do to the lower bound of your time complexity?
# 2. How might sorting the array make the problem easier?

# Write a second solution called `okay_two_sum?` that uses sorting. Make sure it
# works correctly.

# **Hint:** There are a couple ways to solve this problem once the array is
# sorted. One way involves using a very cheap algorithm that can only be used on
# sorted data sets. What are some such algorithms you know?

def okay_two_sum?(array,target_sum)
    array.sort!
    array.each.with_index do |ele,index|
        # debugger
       return true  if array[index+1..-1].include?(target_sum-ele)
    end 

    return false

end 

arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false
