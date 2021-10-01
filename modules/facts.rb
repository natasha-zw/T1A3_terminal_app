require 'json'
require 'pastel'
require 'tty-font'

def fun_facts
    num = rand(1..4)
    facts = JSON.load_file('./json_files/facts.json', symbolize_names: true)
    pastel = Pastel.new
    font = TTY::Font.new(:standard)
    facts.each do |i|
        if num == i[:index]
            puts pastel.magenta(font.write('FUN FACT'))
            puts i[:fact]
        end
    end
end
