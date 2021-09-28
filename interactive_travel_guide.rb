require_relative './modules/welcome'
require_relative './modules/get_username'
require_relative './modules/help_selection'
require_relative './modules/link_help'
require_relative './modules/menu_list_1'

# Welcome message and get user name 
welcome_message

# User given the choice to read the help doc
help_selection
if help_selection == true
    system('clear')
    File.foreach('./text_files/help.txt') do |line| 
        # sleep(2)
        puts line
    end
    link_help
else
    menu_list_1
end

#menu list 1
menu_list_1 if link_help

if menu_list_1 == 1 
    system("clear")
    menu_list_2a
else
    system("clear")
    menu_list_2b
end