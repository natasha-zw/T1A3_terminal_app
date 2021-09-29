
class User
    attr_accessor :name
    @@users_array = []
    
    def self.users
        @@users_array
    end
    
    def initialize(name)
        @name = name
        @@users_array << self
    end
   

end

# amy = User.new('amy')

# p amy.name
# p User.users_array