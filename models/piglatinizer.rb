class PigLatinizer
  attr_accessor :words
  def initialize
    @words = words
  end

  def piglatinize(words)
    arr_word = words.split(' ')
      pig_word = []
      arr_word.each do |word|
      vowels = ['a','e','i','o','u']
      if vowels.include?(word[0].downcase)
        pig_word << (word + 'way')
      else
        pig_word << tempe(word) + 'ay'
      end
    end
    pig_word.join(' ')
  end

  def tempe(word)
    vowels = ['a','e','i','o','u']
    len = word.length
    if vowels.include?(word[0].downcase)
      word
    else
      tempe(word[1...len] + word[0])
    end
  end

  # def word_split(words)


end
