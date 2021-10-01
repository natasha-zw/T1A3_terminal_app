require 'json'


def get_quiz
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

