class PigLatinizer

  def initialize(text)
    @text = text
  end

#words that begin in a consonate the first letter is put on the end , then add "ay"
  def piglatinize
    #split sentense in array
    #each word we take the consonate sound and place at the end then append an "ay"
    #vowels= 'aeiou'.split
    consonates = 'bcdfghjklmnpqrstvwz'.split("")
    split_text = @text.split(" ")
    split_text.map do |word|
      if consonates.include?(word[0])
        word[1..-1]+ word[0]  +"ay"
        #consonant thingy
      else
        word + "way"
        #vowle thing
      end
    end
  end
end
