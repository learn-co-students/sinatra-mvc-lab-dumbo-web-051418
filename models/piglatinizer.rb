class PigLatinizer
  # attr_reader :phrase
  #
  # def initialize(phrase)
  #   @phrase = phrase
  # end

  def piglatinize(phrase)
    phrase.split.map { |string| piglatinize_word(string)}.join(' ')
  end

  def piglatinize_word(word)
    if vowel?(word[0])
      return word + "way"
    else
      newstr = word.split('')
      counter = 0
      until counter > word.length
        if vowel?(word[counter])
          return newstr.join + "ay"
          break
        else
          newstr.shift
          newstr << word[counter]
        end
        counter+=1
      end
    end
  end

  def vowel?(letter)
    ['a','e','i','o','u'].include?(letter.downcase)
  end

end
