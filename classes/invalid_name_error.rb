class InvalidNameError < StandardError
    def message
        "Please input a name!"
    end 
end