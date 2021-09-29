require_relative './modules/welcome'
require_relative './modules/help_selection'
require_relative './modules/link_help'
require_relative './modules/menu_list_1'
require_relative './modules/prequiz'
require_relative './modules/get_quiz'
require_relative './classes/invalid_number_error'
require_relative './classes/invalid_boolean_error'

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
    menu_list_2a
else
    system('clear')
    menu_list_2b
end

# Preamble to Quiz
preamble

# Quiz section
# User answer to question + error handling
num = get_quiz
puts 'Please input your answer, using the numbers:'
begin
    answer = gets.chomp.to_i
    if (1..4).include?(num) && (answer > 4 || answer < 1)
        raise InvalidNumberError
    elsif (5..8).include?(num) && (answer > 2 || answer < 1)
        raise InvalidBooleanError
    end
    puts "Your answer was #{Integer(answer) + 0}!"
rescue InvalidNumberError => e
    puts e.message
    retry
rescue InvalidBooleanError => e
    puts e.message
    retry
rescue
    puts 'Some other error occurred'
end

# Quiz result 

