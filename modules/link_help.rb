require 'tty-prompt'

def link_help
    prompt = TTY::Prompt.new
    prompt.yes?('Are you ready to move on?')
end