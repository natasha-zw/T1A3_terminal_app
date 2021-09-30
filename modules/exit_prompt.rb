require 'tty-prompt'

def exit_prompt
    prompt = TTY::Prompt.new
    prompt.yes?('Would you like to exit the application')
end