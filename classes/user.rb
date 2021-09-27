require_relative '../classes/invalid_name_error'
class User
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def username
        @name
    end
end
