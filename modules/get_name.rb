require 'pastel'
require 'tty-font'
require_relative '../classes/user'
require_relative '../classes/invalid_name_error'



def get_name
    pastel = Pastel.new
    font = TTY::Font.new(:starwars)
    puts pastel.red(font.write("WELCOME"))
    puts pastel.red(font.write("                            TO"))
    puts pastel.red(font.write("            JAPAN"))
    sleep(2)
    puts '🌸 Konnichiwa!🌸 Please input your name and press Enter:'
    user = User.new(STDIN.gets.capitalize.chomp)
    if !user.name.match(/\A[a-zA-Z'-]*\z/)
        raise ArgumentError
    elsif user.name.empty?
        raise InvalidNameError
    end
end


