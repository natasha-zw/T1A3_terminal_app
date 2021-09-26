require 'tty-prompt'

def menu_list_1
    choices = {Food: 1, Attractions: 2}
    prompt = TTY::Prompt.new
    prompt.select("What is more important to you when travelling?", choices)
end

if menu_list_1 == 1 
    puts "hello"
else
    puts "bye"
end