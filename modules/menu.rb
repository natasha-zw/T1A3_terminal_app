require 'tty-prompt'
require 'pastel'
module Menu
    def self.list1
        choices = { Food: 1, Attractions: 2 }
        prompt = TTY::Prompt.new(active_color: :green, symbols:{ marker: '🗾 '})
        prompt.select('What is more important to you when travelling?', choices)
    
    end
    def self.list2a
        menu = {
                  'Lamb BBQ (AKA Ghengis Khan after the man himself)' => 1,
                  'Monjayaki (Savory pancake)' => 2,
                  'Funazushi (Funky cheese sushi)' => 3,
                  'Motsunabe (Regional style hotpot)' => 4
            }
        prompt = TTY::Prompt.new
        prompt.select("Pick a meal you'd like to try!", menu, active_color: :red, symbols: { marker: '🍣 ' })
    end
    def self.list2b
        menu = {
                'Snow festival' => 1,
                'Imperial Palace' => 2,
                'Kiyomizu-dera' => 3,
                'Beppu Onsen' => 4
            }
        prompt = TTY::Prompt.new
        prompt.select("Pick an activity you'd like to try!", menu, active_color: :red, symbols: { marker: '⛩️ ' })
    end

end

