require_relative '../classes/user'
require_relative '../classes/invalid_name_error'

def get_name
    puts 'Konnichiwa! Please input your name and press Enter:'
    user = User.new(gets.chomp)
    if !user.name.match(/\A[a-zA-Z'-]*\z/)
        raise ArgumentError
    elsif user.name.empty?
        raise InvalidNameError
    else
        return user.name
    end
     
end

#error handling
begin
    get_name
rescue ArgumentError
    puts 'Integers are not allowed! Please put in a valid name.'
    sleep(1.5)
    system('clear')
    retry
rescue InvalidNameError => e
    puts e.message
    sleep(1.5)
    system('clear')
    retry
rescue
    puts 'Some other error occurred'
end