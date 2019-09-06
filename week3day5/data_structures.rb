class Stack
    def initialize
        @stack = []
    end

    def add(data)
        @stack.unshift(data)
    end

    def remove
        @stack.shift
    end

end

class Queue
    def initialize
        @queue = []
    end

    def add(data)
        @queue << data
    end

    def remove
        @queue.shift
    end

    def peak
        @queue[0]
    end
end

class Map
    def initialize
        @map = []
    end

    def set(key, value)
        @map.each do |ele|

            if ele[0] == key
                ele[1] = value
            end
        
        end
    
    end

    def get(key)

    end

    def delete(key)

    end

    def show

    end

end