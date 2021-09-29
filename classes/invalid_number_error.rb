class InvalidNumberError < StandardError
    def message
        'Please input a number between 1 and 4'
    end
end