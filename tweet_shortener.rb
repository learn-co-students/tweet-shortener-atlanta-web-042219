def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "too" => "2",
  "two" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end
  


def word_substituter(tweets)
  tweets.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else 
      word 
    end  
  end.join(" ")  
end 

def bulk_tweet_shortener(tweets1)
  tweets1.each do |tweets|
    puts word_substituter(tweets)
  end 
end 

def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
  else
    tweets
  end
end 

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)[1..137] + "..."
  else
    tweet
  end
end 