class PigLatinizer

  def piglatinize(phrase)
    words = phrase.split(" ")
    result = []
    for word in words
      result << piglatinize_word(word)
    end
    result.join(" ")
  end

  def piglatinize_word(word)
    if vowelized?(word)
      piglatin = "#{word}way"
    else
      split_index = first_vowel_index(word)
      rest = word[0..split_index-1]
      # rest = word[0..split_index-1].downcase
      start = word[split_index..-1]
      # start.capitalize! if capitalized?(word)
      piglatin = "#{start}#{rest}ay"
    end
  end

  def vowelized?(word)
    vowel? word[0]
  end

  def vowel?(letter)
    %w{a e i o u y}.include?(letter.downcase)
  end

  def first_vowel_index(word)
    first_vowel = word.scan(/[aeiou]/).first
    word.index(first_vowel) if first_vowel
  end

  def capitalized?(word)
    word[0].ord < 97
  end
end
