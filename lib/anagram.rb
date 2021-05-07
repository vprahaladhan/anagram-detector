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
      if (word.strip.size == @word.size) then 
        @word.split("").uniq.each do |char|
          if (@word.count(char) != word.count(char)) then
            anagram = false
          end
        end
      else anagram = false
      end
      anagram ? anagrams << word : ''  
    end
    anagrams
  end  
end