# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word.strip
  end

  def check_anagram(word_a, word_b)
    if word_b.strip.size != word_a.size then
      return false
    end

    word_a.split("").uniq.each do |char| 
      if word_a.count(char) != word_b.count(char) then 
        return false
      end
    end

    true
  end

  def match(array_of_words)
    anagrams = []
    array_of_words.each { |word| check_anagram(@word, word) ? anagrams << word : '' }
    anagrams
  end
end