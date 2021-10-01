require 'json'
require_relative './modules/welcome'
require_relative './modules/menu'
require_relative './modules/prompts'
require_relative './modules/quiz'
require_relative './modules/facts'

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
    Welcome.error_handling
    Welcome.message

    # User given the choice to read the help doc
    if Prompts.help == true
        system('clear')
        File.foreach('./text_files/help.txt') do |line|
            puts line
        end
        if Prompts.move_on == false
            if Prompts.exit == true
                exit
            end
        end
    end

    # Menu lists 1 and 2 link
    system('clear')
    if Menu.list1 == 1
        system('clear')
        selection1 = 1
        selection2 = Menu.list2a
    else
        system('clear')
        selection1 = 2
        selection2 = Menu.list2b
    end
    
    # Quiz section
    Quiz.preamble
    Quiz.result
    sleep(2)
    
    # Prompts the user if they are ready to continue
    Prompts.continue

    # Fun facts
    system('clear')
    fun_facts
    sleep(2)

    # Prompts the user if they are ready to continue
    Prompts.continue

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