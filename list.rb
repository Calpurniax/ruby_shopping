require "./item.rb"

class List
    attr_writer :items

    def initialize()
        @items = Array.new()       
    end

    def add_item(text)
        item= Item.new(text)
        @items.push(item)
    end

    def remove_item(index)        
        @items.delete_at(index)        
    end

    def check_item(index)
        @items[index].checked = true
        return @items[index]
    end
    
    def uncheck_item(index)
        @items[index].checked = false
        return @items[index]
    end

    def remove_all
        @items.clear
    end

    def show_all
        if @items.length >0
            @items.each_index do |index|
                puts index.to_s + " - " + @items[index].to_s   
            end        
        else
            puts "nothing to show"
        end
    end
    # def to_s
       
    # end
end