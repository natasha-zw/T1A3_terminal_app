require_relative '../classes/user'
require_relative '../classes/invalid_name_error'
require 'csv'

def get_name
    username =[]
    puts 'Konnichiwa! Please input your name and press Enter:'
    user = User.new(gets.chomp)
    if !user.name.match(/\A[a-zA-Z'-]*\z/)
        raise ArgumentError
    elsif user.name.empty?
        raise InvalidNameError
    else
       username << user.name
        CSV.open('./csv_files/users.csv', 'a') do |csv|
            csv << username
        end
        
    end
end


