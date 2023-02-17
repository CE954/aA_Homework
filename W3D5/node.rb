class Node
    
    attr_reader :value, :children
    def initialize(value, children = [])
        #node has info on itself and its children (will be emtpy by default)
        @value = value
        @children = children
    end
end

d = Node.new("d")
e = Node.new("e")
f = Node.new("f")
g = Node.new("g")
b = Node.new("b", [d, e]) #the node instances will be children
c = Node.new("c", [f, g])
a = Node.new("a", [b, c])

#     a
#    /  \
#   b    c
# /  \  /  \
# d   e f   g 