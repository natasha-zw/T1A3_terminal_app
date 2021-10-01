require 'json'
require 'pastel'
require 'tty-font'
require_relative '../classes/invalid_number_error'
require_relative '../classes/invalid_boolean_error'
require_relative '../classes/user'

module Quiz
    def self.preamble
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
    def self.get
        parsed = JSON.load_file('./json_files/quiz.json', symbolize_names: true)
        num = rand(1..8)
        parsed.each do |questions| 
            if num == questions[:index] && (1..4).include?(num)
                puts questions[:question]
                puts "1. #{questions[:option1]}"
                puts "2. #{questions[:option2]}"
                puts "3. #{questions[:option3]}"
                puts "4. #{questions[:option4]}"
            elsif num == questions[:index] && (5..8).include?(num)
                puts questions[:question]
                puts "1. #{questions[:option1]}"
                puts "2. #{questions[:option2]}"
            end
        end
        return num
    end
    
    def self.result
        num = Quiz.get
        puts 'Please input your answer, using the numbers:'
        begin
            answer = gets.chomp.to_i
            if (1..4).include?(num) && (answer > 4 || answer < 1)
                raise InvalidNumberError
            elsif (5..8).include?(num) && (answer > 2 || answer < 1)
                raise InvalidBooleanError
            end
            puts "Your answer was #{answer + 0}!"
        rescue InvalidNumberError => e
            puts e.message
            retry
        rescue InvalidBooleanError => e
            puts e.message
            retry
        rescue
            puts 'Some other error occurred'
        end

        # Quiz result
        question = JSON.load_file('./json_files/quiz.json', symbolize_names: true)
        question.each do |i|
            if num == i[:index] && answer == i[:answer]
                File.foreach('./text_files/congratulations_ascii.txt') do |line|
                    puts line
                end
                sleep(3)
                puts 'Well done! That is the right answer and here is the reasoning:'
                sleep(1)
                puts i[:explanation]
            elsif num == i[:index] && answer != i[:answer]
                File.foreach('./text_files/incorrect_ascii.txt') do |line|
                    puts line
                end
                sleep(3)
                puts 'Oh no! That was the incorrect answer!'
                puts ' '
                sleep(1)
                puts 'Here is an explanation of the right answer:'
                puts i[:explanation]
            end
        end
        
    end
end
