require 'json'
require_relative './modules/welcome'
require_relative './modules/help_selection'
require_relative './modules/link_help'
require_relative './modules/menu_list_1'
require_relative './modules/prequiz'
require_relative './modules/get_quiz'
require_relative './modules/quiz_result'

# Welcome message and get user name
welcome_message

# User given the choice to read the help doc
if help_selection == true
    system('clear')
    File.foreach('./text_files/help.txt') do |line|
        # sleep(2)
        puts line
    end
    link_help
end

# Menu lists 1 and 2 link
system('clear')
if menu_list_1 == 1
    system('clear')
    selection1 = 1
    selection2 = menu_list_2a
else
    system('clear')
    selection1 = 2
    selection2 = menu_list_2b
end

# Preamble to Quiz
preamble

# Quiz section incl result
quiz_result
 # sleep(2)

# User menu selection result
region_file = JSON.load_file('./json_files/regions.json', symbolize_names: true)
i = 1
region_file.each do |region|
    if region[:index] == selection2
        puts "======================"
        puts region[:region]
        puts "======================"
        puts region[:description]
        puts ' '
        case selection1
        when 1
            region[:food].each do |item|
                puts "#{i}. #{item}"
                i += 1
            end
        when 2
            region[:attraction].each do |item|
                puts "#{i}. #{item}"
                i += 1
            end
        end
    end
end

