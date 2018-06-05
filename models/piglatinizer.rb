class PigLatinizer
  def piglatinize(whole_text)
    whole_text.split(" ").map do |text|
      add_on = ""
      is_vowel?(text[0]) ? add_on = "way" : add_on = "ay"
      index_first_vowel = text.split("").each_with_index.find { |letter, index| is_vowel?(letter) }.last
      text[index_first_vowel..-1] + text[0...index_first_vowel] + add_on
    end.join(" ")

  end

  private
  def is_vowel?(letter)
    letter.upcase == "A" || letter.upcase == "E" || letter.upcase == "I" ||
    letter.upcase == "O" || letter.upcase == "U"
  end
end
