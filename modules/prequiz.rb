def preamble
    system('clear')
    puts '止まれ(tomare!)'
    sleep(0.5)
    puts 'Stop!'
    sleep(0.5)
    File.foreach('./text_files/stop_ascii.txt') do |line|
        puts line
    end
    sleep(0.5)
    puts 'You have just activated my trap card!'
    puts 'To continue you must answer the following question'
    puts ' '
    puts ' '
end

