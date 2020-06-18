def dictionary
  words_to_be_substituted = {"hello" => "hi", "to" => 2, "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end


def word_substituter(tweet)
  tweet.split(" ").collect do |word|
  if dictionary.keys.include?(word.downcase)
    word = dictionary[word.downcase]
  else
    word 
   end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |item|
    puts word_substituter(item)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
  end

def shortened_tweet_truncator(tweet)
   if word_substituter(tweet).chars.length > 140  
    truncated = word_substituter(tweet).chars[0..136].push("...").join("")
  else 
    word_substituter(tweet) 
  end 
end 