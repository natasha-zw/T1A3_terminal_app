require 'csv'
require 'pastel'
require 'tty-font'
def preamble
    pastel = Pastel.new
    font = TTY::Font.new(:standard)
    system('clear')
    puts pastel.magenta(font.write("#{User.users[0]}", letter_spacing: 4))
    sleep(0.5)
    puts '止まれ!'
    sleep(0.5)
    puts 'Stop!'
    sleep(0.5)
    File.foreach('./text_files/stop_ascii.txt') do |line|
        puts line
    end
    sleep(2)
    puts 'You have just activated my trap card!'
    puts 'To continue you must answer the following question'
    puts ' '
    puts ' '
end
