require 'json'

def get_region
    region = JSON.load_file('./json_files/quiz.json', symbolize_names: true)
    region.each do
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
end 