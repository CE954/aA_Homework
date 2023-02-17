class Node
    attr_reader :value, :children

    #node has info on itself and its children (will be emtpy by default)
    def initialize(value, children = [])
        @value = value
        @children = children
    end
end

