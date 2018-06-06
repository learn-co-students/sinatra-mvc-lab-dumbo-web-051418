class PigLatinizer

  attr_accessor :word

    def is_vowel?(letter)
      vowels = %w[a e i o u]
      if vowels.include?(letter)
        true
      else
        false
      end
    end

    def tempe(word)
      vowels = %w[a e i o u]
      if vowels.include?(word[0].downcase)
        "#{word}way"
      else
        index = -1
        word.split("").each_with_index.find do |letter, idx|
          index = idx if is_vowel?(letter)
        end
      word[index..-1] + word[0...index] + "ay"
      end
    end

    def piglatinize(phrase)
      array = phrase.split(" ")
      array.map {|word| tempe(word) }.join(' ')
    end

end
