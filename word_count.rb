class Phrase
  VERSION = 1
  def initialize(phrase)
    @phrase = phrase
  end
  
  def word_count
    words = @phrase.downcase.split(/[^A-Za-z0-9']/).reject(&:empty?)
    words.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 } 
  end  
end