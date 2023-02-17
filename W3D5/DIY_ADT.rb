 class Stack
    def initialize
        @stack = Array.new
    end

    def push(el)
        @stack << (el)
    end

    def pop
        @stack.pop
    end

    def peek
       @stack[-1]
    end
end

class Queue
    def initialize
        @queue = Array.new
    end

    def enqueue(ele) 
        @stack.unshift(el)
    end

    def dequeue
        @stack.pop
    end

    def peek 
        @stack[-1]
    end
end

class Map
    def set(key, value)

    end

    def get(key)

    end

    def delete(key)

    end

    def show

    end

    def set

    end
end
