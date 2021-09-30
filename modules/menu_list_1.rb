require 'tty-prompt'
require_relative './menu_list_2_a'
require_relative './menu_list_2_b'

def menu_list_1
    choices = { Food: 1, Attractions: 2 }
    prompt1 = TTY::Prompt.new(active_color: :cyan)
    puts 'Welcome to the interactive travel guide!'
    prompt1.select('What is more important to you when travelling? (Use ↑/↓ and ←/→ arrow keys, press Enter to select)', choices)
   
end

