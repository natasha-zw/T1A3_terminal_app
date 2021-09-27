require 'tty-prompt'

def help_selection
    prompt = TTY::Prompt.new
    prompt.yes?('Would you like you read the help document?')
   
end

