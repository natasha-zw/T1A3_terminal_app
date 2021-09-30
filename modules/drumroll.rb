require 'tty-prompt'

def drumroll
    prompt = TTY::Prompt.new
    prompt.keypress('Press space or enter to continue', keys: [:space, :return])
end