# If you weren't worried about time complexity, what would be the most
# straightforward way to solve this problem? To start with, you could check every
# possible pair. If you sum each element with every other, you're sure to either
# find the pair that sums to the target or determine that no such pair exists.

# This is the **brute-force** solution. It's essentially hitting the problem with
# a sledge hammer. There are faster and more elegant ways to solve the problem,
# but you know for sure that this will get the job done.

# Let's start by implementing the brute force solution. Write a method called
# `bad_two_sum?` that checks every possible pair.

# Make sure that you don't pair an element with itself. However, you don't need to
# bother checking for summing the same pair twice; that won't affect your result.

# (**Note:** You can cut the running-time significantly by returning early and by
# not checking pairs more than once. However, these micro-optimizations will not
# improve the time complexity of the solution. Do you see why?)

# Once you're done, write a comment with your solution's time complexity.

def bad_two_sum?(array,target_sum)
    array.each_with_index do |num1, idx1| 
        array.each_with_index do |num2, idx2|
            return true if num1 + num2 == target_sum && idx1 < idx2
        end
    end
    false
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false


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
       return true  if array[index+1..-1].include?(target_sum-ele)
    end 
    false
end 

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false

# Finally, it's time to bust out the big guns: a hash map. Remember, a hash map
# has *O(1)* `#set` and *O(1)* `#get`, so you can build a hash out of each of the
# `n` elements in your array in *O(n)* time. That hash map prevents you from
# having to repeatedly find values in the array; now you can just look them up
# instantly.

# See if you can solve the `two_sum?` problem in linear time now, using your hash
# map.

# Once you're finished, make sure you understand the time complexity of your
# solutions. Then call over your Instructor and show them what you've got. Defend
# to them why each of your solutions has the time complexity you claim it does.

def two_sum?(array, target_sum)

    

end

arr = [0, 1, 5, 7]
two_sum?(arr, 6) # => should be true
two_sum?(arr, 10) # => should be false