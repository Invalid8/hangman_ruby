require_relative "word_info"
require_relative "gallows"
require_relative "../model/dictionary_loader"

def h_processor

    puts("                    ---------------                    ")
    puts("------------------ | H A N G M A N | ------------------")
    puts("                    ---------------                    ")

    words = load_dictionary('data/dictionary_en.txt', 3)

    hidden_word = words.sample

    found_letters = []
    wrong_letters = []

    error_counter = 0

    puts("SAVE HIM IF YOU CAN!")
    puts()

    loop do


        draw_gallow error_counter

        if error_counter > 6
            puts "\nYou lost the game 😢\nThe word is #{hidden_word}"
            break
        end

        info =  word_info(hidden_word, found_letters)

        puts info
        puts

        unless info.include?('_')
            puts "You win, 🎉🎉🎉"
            escape_gallow()
            break
        end

        print "Worng letters: "
        puts wrong_letters.sort.uniq.join(" ")
        puts

        print "Give me a letter: "

        answer = gets
        answer = answer.chomp.downcase

        if answer == 'stop'
            exit
        end

        if answer.length > 1
            puts "You must give only one letter!"
        elsif answer.empty?
        elsif hidden_word.include?(answer)
            puts "The letter is part of the hidden word"

            if found_letters.include?(answer)
            else
                found_letters << answer
            end

        else
            puts "Invalid Letter"
            wrong_letters << answer.upcase
            error_counter += 1
        end

    end

    puts "---------------------------------------------------------"

end
