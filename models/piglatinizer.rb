class PigLatinizer


  def vowel
    ["a","A","e","E","i","I","o","O","u","U"]
  end

  def piglatinize(user_input)
    word_array = user_input.split

    latin_array = word_array.map do |word|
      if vowel.include?(word[0])
        word + "way"
      else
        index = word.split("").each_with_index.find{|letter, index| vowel.include?(letter)}[1]
        head = word.slice(0..index-1)
        tail = word.slice(index..-1)
        new_word = tail+head+"ay"
      end
    end

    latin_array.join(" ")
  end

end
