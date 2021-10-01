class User
    attr_accessor :name
    @@users_array = []
    
    def self.users
        @@users_array
    end
    
    def initialize(name)
        @name = name
        @@users_array << self.name
    end
   

end
