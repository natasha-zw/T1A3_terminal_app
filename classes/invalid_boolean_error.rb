class InvalidBooleanError < StandardError
    def message
        'Please put either 1 or 2 as your answer'
    end
end