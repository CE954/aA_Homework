 class Stack
    def initialize
        @stack = Array.new
    end

    def push(el)
        stack << (el) 
        self #returns a stack instance, not the array
    end

    def pop
        stack.pop 
    end

    def peek
       stack[-1]
    end

    def size
        stack.length
    end

    def empty?
        stack.empty?
    end
    
    private #takes away the ability to get the variable outside of the class definition
    attr_reader :store
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
    def initialize
        @map = Array.new
    end

    def set(key, value)
        @map.each do |sub|
            if sub.first == key
                sub[-1] = value
                return true
            end
        end
        @map << [key, value] 
    end

    def get(key)
        @map.each do |sub|
            if sub.include?(key)
                return sub[-1]
            end
        end
        return "Key does not exist"
    end

    def delete(key)
        @map.select do |sub|
            if sub.first != key 
                sub
            end
        end
    end

    def show
        @map
    end
end
