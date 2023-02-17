 class Stack
    def initialize
        @stack = Array.new
    end

    def push(el)
        stack << (el) #push/<< returns the array we pushed the ele into, so we need to return self
        self #returns the stack instance, not the array
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

    def inspect
        #we need this here so that anytime self is returned, we only show the object ID and keep instance variables private
        "<#Stack:#{stack.object_id}>"
        #"<#Stack: @stack=["a","b","c"]>"
    end

    private #takes away the ability to get the variable outside of the class definition
    attr_reader :store
end

class MyQueue
    #use MyQueue because there is already a Queue class built in to Ruby
    def initialize
        @line = Array.new
    end

    def enqueue(ele) 
        line.unshift(el) #unshift also evaluates to the array
        self #return the MyQueue instance, not the array
    end

    def dequeue
        line.pop
    end

    def empty?
        line.empty?
    end

    def show 
        return line.dup #will return a duplicate and not the original array.
        #the user can manipulate the duplicate and it will not affect the original
        #if your line has subarrays, you would need to create a "deep" dup method
    end

    private
    attr_reader :inner_array #attr_readers also let us not have to type @ in front of instance variable
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
