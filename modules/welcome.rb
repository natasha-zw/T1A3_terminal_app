require_relative './get_name'
require_relative '../classes/user'
require 'csv'

def welcome_message
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
    end
    username = CSV.read('./csv_files/users.csv', headers: true)
    regions = ['Hokkaido 北海道', 'Kanto　関東', 'Kansai　関西', 'Kyushu　九州']
    system('clear')
    puts "Welcome #{username[-1]}"
    puts 'This is your interactive travel guide to Japan!'
    sleep(1.5)
    puts 'Together we will be finding out more about four regions in Japan.'
    sleep(2)
    regions.each do |item|
        puts item
        sleep(1)
    end
end
