#Underscores templating

def word_info word, letters
    
    n = word.length
    unknowns = "_ " * n

    letters.each do |letter|

        i = -1

        loop do

            i = word.index(letter, i + 1)

            break if i.nil?

            unknowns[2 * i] = letter.upcase
        
        end

    end

    unknowns

end