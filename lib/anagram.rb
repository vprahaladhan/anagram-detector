# Your code goes here!
class Anagram
  def initialize(word)
    @word = word.strip
  end

  attr_accessor :word

  def match(array_of_words)
    anagrams = []
    array_of_words.each do |word|
      anagram = true
      word.strip.size == @word.size ? 
        @word.split("").uniq.each { |char| @word.count(char) != word.count(char) && anagram = false } : anagram = false
      anagram ? anagrams << word : ''  
    end
    anagrams
  end  
end