require 'pry'

def dictionary
dictionary_hash = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
  "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end

def word_substituter(tweet_one)
  array_t = tweet_one.split
    tweet_one_short = array_t.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
tweet_one_short.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
      puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet_one)
  if tweet_one.length > 140
    word_substituter(tweet_one)
  else
   tweet_one
  end
end

def shortened_tweet_truncator(tweet_three)
if word_substituter(tweet_three).length > 140
    word_substituter(tweet_three)[0..136] + '...'
  else
    tweet_three
  end
end
