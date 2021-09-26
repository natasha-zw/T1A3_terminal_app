require 'tty-prompt'
require_relative './menu_list_2_a'
require_relative './menu_list_2_b'

def menu_list_1
    choices = { Food: 1, Attractions: 2 }
    prompt1 = TTY::Prompt.new
    puts 'Welcome to the interactive travel guide!'
    prompt1.select('What is more important to you when travelling? (Use ↑/↓ and ←/→ arrow keys, press Enter to select)', choices)
   
end

if menu_list_1 == 1 
    system("clear")
    menu_list_2a
else
    system("clear")
    menu_list_2b
end