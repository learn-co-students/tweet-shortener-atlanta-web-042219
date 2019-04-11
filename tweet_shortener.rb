# Write your code here.
require "pry"

def dictionary
  dictionary = {
    "hello"=> "hi",
    "to"=> "2",
    "two"=> "2",
    "too"=> "2",
    "for"=> "4",
    "four"=> "4",
    "be"=> "b",
    "at"=> "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  input = tweet.split
  input.each do |word|
    dictionary.each_key do |key|
      if key == word
        word = dictionary[key]
        binding.pry
      end
    end
  end
  
end
  