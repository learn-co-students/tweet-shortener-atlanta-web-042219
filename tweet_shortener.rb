# Write your code here.
require 'pry'

def dictionary
word2sub= {
"hello" => 'hi',
"to" => '2' ,
"two" => '2',
"too" => '2',
"for" => '4',
"four" =>'4',
'be' => 'b',
'you' => 'u',
"at" => "@" ,
"and" => "&"
}
end

def word_substituter(tweet)
  my_tweet = tweet.split(" ")
  result = my_tweet.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else 
      word
      end 
  end 
    result.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  # binding.pry 

for element in tweet_array
puts word_substituter(element)
end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
     word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  my_tweet =selective_tweet_shortener(tweet)
  if my_tweet.length >140
    my_tweet[0..136] << "..."
  else
    my_tweet
  end
end





  