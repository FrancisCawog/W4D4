# ## Phase I

# Write a method `#first_anagram?` that will generate and store all the possible
# anagrams of the first string. Check if the second string is one of these.

# **Hints:**

# * **For testing your method, start with small input strings; otherwise you might
#   be waiting a while...**
# * If you're having trouble generating the possible anagrams, look into
# [this method][array-permutation-docs].

# What is the time complexity of this solution? What happens if you increase the
# size of the strings?

def first_anagram?(str1,str2)
    
    anagrams(str1).include?(str2)
    

end 

def anagrams(str1)
    return [str1] if str1.length <= 1
    
    first = str1[0]
    
    prev = anagrams(str1[1..-1])
    
    new_anag = [] 
    prev.each do |prev_anagram|

        (0..prev_anagram.length).each do |i|
            new_anag << prev_anagram[0...i] + first + prev_anagram[i..-1]
        end 
    end 
    return new_anag

end 

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")

## Phase II

# Write a method `#second_anagram?` that iterates over the first string. For each
# letter in the first string, find the index of that letter in the second string
# (hint: use `Array#find_index`) and delete at that index. The two strings are
# anagrams if an index is found for every letter and the second string is empty at
# the end of the iteration.

def second_anagram?(str1, str2)

  str2_array = str2.split("") #=> o(n)
  
  str1.each_char do |char|  #-> o(n)
    index = str2_array.index(char) #o(n)
    if index 
        str2_array.delete_at(index) #o(1)
    else 
        return false 
    end 
  end 
  str2_array.empty? # o(1)

end 

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")


# o(n) + o(n * n) --> o(n2)

# Try varying the length of the input strings. What are the differences between
# `#first_anagram?` and `#second_anagram?`?

# Write a method `#third_anagram?` that solves the problem by sorting both strings
# alphabetically. The strings are then anagrams if and only if the sorted versions
# are identical.

# What is the time complexity of this solution? Is it better or worse than
# `#second_anagram?`?

# ## Phase IV

# Write one more method `#fourth_anagram?`. This time, use two hashes to store the
# number of times each letter appears in both words. Compare the resulting hashes.

# What is the time complexity?

# **Bonus:** Do it with only one hash.
