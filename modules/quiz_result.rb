require 'json'
require_relative '../modules/get_quiz'
require_relative '../classes/invalid_number_error'
require_relative '../classes/invalid_boolean_error'

def quiz_result
    num = get_quiz
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

