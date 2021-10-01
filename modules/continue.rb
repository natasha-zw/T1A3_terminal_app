require 'tty-prompt'

def continue
    prompt = TTY::Prompt.new
    prompt.keypress('Press space or enter to continue', keys: [:space, :return])
end