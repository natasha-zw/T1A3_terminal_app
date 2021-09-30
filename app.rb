require 'json'
require_relative './modules/welcome'
require_relative './modules/help_selection'
require_relative './modules/link_help'
require_relative './modules/exit_prompt'
require_relative './modules/menu_list_1'
require_relative './modules/prequiz'
require_relative './modules/drumroll'
require_relative './modules/quiz_result'


begin
    # CLI arguments
    arguments = ARGV
    case
    when ( arguments & ['--h', '--help']).any?
        File.foreach('./text_files/help.txt') do |line|
            puts line
        end
        exit
    when (arguments & ['--a', '--about']).any?
        File.foreach('./text_files/purpose.txt') do |line|
            puts line
        end
        exit
    when (arguments & ['--g', '--gems']).any?
        File.foreach('./Gemfile') do |line|
            if line.include?('gem')
                puts line
            end
        end
        exit
    end
    # Welcome message and get user name
    welcome_message

    # User given the choice to read the help doc
    if help_selection == true
        system('clear')
        File.foreach('./text_files/help.txt') do |line|
            puts line
        end
        if link_help == false
            if exit_prompt == true
                exit
            end
        end
    end

    # Menu lists 1 and 2 link
    system('clear')
    if menu_list_1 == 1
        system('clear')
        selection1 = 1
        selection2 = menu_list_2a
    else
        system('clear')
        selection1 = 2
        selection2 = menu_list_2b
    end

    # Preamble to Quiz
    preamble

    # Quiz section incl result
    quiz_result
    sleep(2)

    # Pause before selection result
    drumroll

    # User menu selection result
    system('clear')

    region_file = JSON.load_file('./json_files/regions.json', symbolize_names: true)
    i = 1
    region_file.each do |region|
        if region[:index] == selection2
            puts "🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸"
            puts " Your destination is #{region[:region]}"
            puts "🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸"
            puts ' '
            puts region[:description]
            puts ' '
            case selection1
            when 1
                region[:food].each do |item|
                    puts "#{i}. #{item}"
                    i += 1
                end
            when 2
                region[:attraction].each do |item|
                    puts "#{i}. #{item}"
                    i += 1
                end
            end
        end
    end
# Error handling for early exiting the program and not found
rescue Interrupt
    puts 'You ended the program!'
rescue Errno::ENOENT
    puts 'Internal File Not Found'
end