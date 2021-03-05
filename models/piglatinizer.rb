class PigLatinizer

    def piglatinize(word)
        if word.split(" ").count > 1
            res = piglatinize_sentence(word)
        else
            res = latin(word)
        end
        
    end

    def latin(word)
        word = word.split("")
        counter = word.length
        pig_word = []
        end_letters = []
        stop = 0
        word.each do |w|
            if !w.start_with?('a','e','i','o','u','A','E','I','O','U') && stop == 0
                end_letters << w
            elsif w.start_with?('a','e','i','o','u','A','E','I','O','U')
                pig_word << w 
                stop = 1
            else 
                pig_word << w 
            end
        end
        if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u" || word[0] == "A" || word[0] == "E" || word[0] == "I" || word[0] == "O" || word[0] == "U"
            word << "w"
            word << "a"
            word << "y"
            word = word.join("")
            pig_word = word
        else
            pig_word = pig_word.join("")
            end_letters = end_letters.join("")
            pig_word = pig_word + end_letters + "ay"
        end
        pig_word
    end

    def piglatinize_sentence(sen)
        sentence = sen.split(" ")
        pig_sentence = []
        sentence.each do |s|
            res = piglatinize(s)
            pig_sentence << res
        end
        pig_sentence = pig_sentence.join(" ")
        pig_sentence

    end

end