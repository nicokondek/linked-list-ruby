class Linkedlist
    attr_accessor :head

    def initialize
        self.head = nil
        
    end


    def add(value)
        if(self.head.nil?)
            self.head = Node.new(value, nil)
        else
            lastNode = self.head
            while(!lastNode.nextNode.nil?)
                lastNode = lastNode.nextNode
            end
            #we are at the end of the list
            lastNode.nextNode = Node.new(value, nil)
        end
    end

    def find(value)
        node = self.head
        while(!node.nil?)
            if(node.value == value)
                return true
            end
            node = node.nextNode
        end
        false
    end
    #prepend adds node to the head
    def prepend(value)
        if head.nil?
            self.head = Node.new(value, nil)
        else
        old_head = head
        self.head = Node.new(value, old_head)
        end
    end
    #removes any node from the linked list
    def remove(value)
        return if head.nil?

        node = head
        prev_node = nil
        until(node.nil?)
            if(node.value == value)
                if !prev_node.nil?
                    prev_node.nextNode = node.nextNode
                    return
                else
                    self.head = nil
                    return
                end
            end
            prev_node = node
            node = node.nextNode
        end
    end
    
    class Node
        attr_accessor :value, :nextNode

        def initialize(value, nextNode)
            self.value = value
            self.nextNode = nextNode
        end
    end
end
