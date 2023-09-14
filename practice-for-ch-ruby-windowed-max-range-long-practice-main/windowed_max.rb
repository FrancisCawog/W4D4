def windowed_max_range(array,window)

    current_max_range = 0

    (0..array.length-window).each do |i|
        max = array[i...i+window].max
        min = array[i...i+window].min
        diff = max - min 
        current_max_range = diff if diff > current_max_range
    end 
    return current_max_range

end 

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8