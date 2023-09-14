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

class MyQueue
    def initialize
        @store = []
    end

    def peek
        @store.first
    end

    def size
        @store.size
    end

    def empty?
        @store.empty?
    end

    def enqueue(ele)
        @store << ele
    end

    def dequeue
        @store.shift
    end
end

class MyStack
    def initialize
      @store = []
    end

    def peek
        @store.first
    end

    def size
        @store.size
    end

    def empty?
        @store.empty?
    end

    def pop
        @store.pop
    end

    def push(ele)
        @store.push(ele)
    end
end