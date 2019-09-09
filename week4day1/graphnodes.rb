class GraphNode
    attr_reader :value 
    attr_accessor :neighbors
    
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def inspect
        "#{self}"
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
 require "byebug"

def bfs(node, target)
    # debugger
    set = []
    return node if node.value == target
    queue = node.neighbors
    until queue.empty?
        new_node = queue.shift
        unless set.include?(new_node)
            if new_node.value == target
                return new_node
            else
                set << new_node
                queue += new_node.neighbors
            end
        end
    end
    nil

end

# p bfs(a, "b")
p bfs(a, "f")