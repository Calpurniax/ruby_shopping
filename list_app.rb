require "./item.rb"
require "./list.rb"

class ListApp
    attr_writer :list
    
    def initialize
        @list =List.new
    end

    def run
        puts "hi, welcome to the list app"
        loop do
            puts "a - add an item"
            puts "r - remove an item"            
            puts "c - to check an item"
            puts "u - to uncheck an item"
            puts "s - show all items"
            puts "g - remove all items"
            puts "x - exit the app"
            input= gets.chomp
            case input 
            when "a"
                puts "insert new item: "
                newItem= gets.chomp
                @list.add_item(newItem)
                8.times {print '>' }
                puts " #{newItem} was added"               
            
            when "r"
                puts "insert position of the item: "
                indexItem = gets.chomp
                puts "are you sure you want to delete this item? y/n "
                confirmation = gets.chomp
                if confirmation== "y"
                    removedItem = @list.remove_item(indexItem.to_i)  
                else puts "cancelled"
                end 
                8.times {print '>' }
                puts " #{removedItem.text} was removed"                
                         
            when "c"
                puts "insert position of the item: "
                indexItem = gets.chomp
                checkedItem = @list.check_item(indexItem.to_i) 
                8.times {print '>' }
                puts " #{checkedItem.text} was checked"      
            when "u"
                puts "insert position of the item: "
                indexItem = gets.chomp
                uncheckedItem = @list.uncheck_item(indexItem.to_i)  
                8.times {print '>' }
                puts " #{uncheckedItem.text} was uncheked"           
            
            when "s"
                puts "this is your list:"
                @list.show_all                
            
            when "g"
                puts "are you sure you want to delete all items? y/n "
                confirmation = gets.chomp
                if confirmation== "y"
                    @list.remove_all
                    puts "all items are delete"
                else puts "cancelled"
                end               
                            
            when "x"
                break
            else puts "Unrecognized operation"
            end
        end
        puts "Thank you for using the app"
    end
end

list_app =ListApp.new
list_app.run
