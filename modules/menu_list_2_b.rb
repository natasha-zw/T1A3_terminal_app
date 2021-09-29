require 'tty-prompt'

def menu_list_2b
    menu = {
            'Snow festival' => 1,
            'Imperial Palace' => 2,
            'Kiyomizu-dera' => 3,
            'Beppu Onsen' => 4
        }
    prompt = TTY::Prompt.new
    prompt.select("Pick an activity you'd like to try!", menu, symbols: { marker: '❀' })
end

p menu_list_2b