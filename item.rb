class Item
    attr_writer :checked  
    attr_accessor :text

    def initialize(text='')
        @text = text
        @checked = false
    end

    def to_s
        if @checked
            "[x] " + @text
        else
            "[ ] " + @text
        end
    end
end

