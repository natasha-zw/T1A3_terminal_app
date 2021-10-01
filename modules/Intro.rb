require 'pastel'
require 'tty-font'
require_relative '../classes/user'
require_relative '../classes/invalid_name_error'

module Intro

    def self.title
        pastel = Pastel.new
        font = TTY::Font.new(:starwars)
        puts pastel.red(font.write("WELCOME"))
        sleep(2)
        puts pastel.red(font.write("                            TO"))
        sleep(2)
        puts pastel.red(font.write("            JAPAN"))
        sleep(2)
        File.foreach('./text_files/fuji.txt') do |line|
            puts line
        end
        sleep(2)
    end

    def self.get_name
        puts '🌸 Konnichiwa!🌸 Please input your name and press Enter:'
        user = User.new(STDIN.gets.capitalize.chomp)
        if !user.name.match(/\A[a-zA-Z'-]*\z/)
            raise ArgumentError
        elsif user.name.empty?
            raise InvalidNameError
        end
    end
end

