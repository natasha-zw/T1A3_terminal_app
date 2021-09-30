require 'tty-prompt'

def menu_list_2a
    menu = {
              'Lamb BBQ (AKA Ghengis Khan after the man himself)' => 1,
              'Monjayaki (Savory pancake)' => 2,
              'Funazushi (Funky cheese sushi)' => 3,
              'Motsunabe (Regional style hotpot)' => 4
        }
    prompt = TTY::Prompt.new
    prompt.select("Pick a meal you'd like to try!", menu, symbols: { marker: '🢂' })
end

