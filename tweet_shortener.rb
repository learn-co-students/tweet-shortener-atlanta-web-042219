def dictionary
  @words_and_subs = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
}
end

def word_substituter(tweet)
  dictionary
  tweet_array = tweet.split(/ /)
  key_array = @words_and_subs.keys

  tweet_array.map! {|word|
    if key_array.include?(word.downcase)
      @words_and_subs[word.downcase]
    else word
    end
  }

tweet_array.join(" ")

end

def bulk_tweet_shortener(tweets)
  dictionary
  key_array = @words_and_subs.keys

  tweets.each do |tweet|

    a_tweet = tweet.split(/ /)
    a_tweet.map! {|word|
      if key_array.include?(word.downcase)
        @words_and_subs[word.downcase]
      else word
      end
    }

    puts a_tweet.join(" ")

  end
end

def selective_tweet_shortener(tweet)
  dictionary
  key_array = @words_and_subs.keys
  if tweet.length > 140

    tweet_array = tweet.split(/ /)
    tweet_array.map! {|word|
      if key_array.include?(word.downcase)
        @words_and_subs[word.downcase]
      else word
      end
    }

    tweet_array.join(" ")

  else tweet

  end
end

def shortened_tweet_truncator(tweet)
  dictionary
  key_array = @words_and_subs.keys
  if tweet.length > 140

    tweet_array = tweet.split(/ /)
    tweet_array.map! {|word|
      if key_array.include?(word.downcase)
        @words_and_subs[word.downcase]
      else word
      end
    }

    shortened_tweet = tweet_array.join(" ")

    if shortened_tweet.length > 140
      shortened_tweet.slice(0...140)
    else shortened_tweet
    end

  else tweet

  end
end
