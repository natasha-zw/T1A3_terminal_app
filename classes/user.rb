class User
    attr_reader :name
    def initialize(name)
        @name = name
    end
end
def username
    puts "Konnichiwa! Please input your name and press Enter:"
    user = User.new(gets.chomp)
    puts "Hello there #{user.name}"
end

