$short_words = {
	"and" => "&",
	"at"  => "@",
	"be"  => "b",
	"for" => "4",
	"to"  => "2",
	"too" => "2",
	"you" => "u"}

def word_substituter(str)
	str.split.map { |word| 
		word=$short_words[word.downcase] if $short_words.keys.include?(word.downcase)
		word
	}.join(" ")
end

def bulk_tweet_shortener(arr)
	arr.each{|str| puts word_substituter(str)}
end

def selective_tweet_shortener(str)
	if str.size > 140
		word_substituter(str)
	else
		str
	end
end

def shortened_tweet_truncator(str)
	str=word_substituter(str)
	if(str.size > 140)
		str[1..137]+"..."
	else
		str
	end
end