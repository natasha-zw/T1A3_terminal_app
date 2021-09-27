require_relative './get_username'
require_relative '../classes/user'

def welcome_message
    username = get_name
    regions = ['Hokkaido 北海道', 'Kanto　関東', 'Kansai　関西', 'Kyushu　九州']
    system('clear')
    puts "Welcome #{username} to this interactive travel guide to Japan!"
    sleep(1.5)
    puts 'Together we will be finding out more about four regions in Japan.'
    sleep(2)
    regions.each do |item|
        puts item
        sleep(1)
    end
end 
