require 'twitter'

twitter_api = Twitter::REST::Client.new do |config|
	config.consumer_key = "z4wvvGD1HGtLijn2DVaENI275"
	config.consumer_secret = "gWM4FvLpyKPm0Jr6pF6LWLxFbkM0YgvsFPt2byZzYhfZgyAqmg"

	config.access_token = "875832863605874688-8CNyNfkfzT2EIwLNOwvLgctzfwMukbP" 
	config.access_token_secret = "YvYsH2GD4VQOd6afP96HuHbgbJynhC9HY5Rh9IiIuTpCY" 
end

cfg_tweets = twitter_api.search("CodeFirstGirls") 

cfg_tweets.each do |tweet|
	puts "#{tweet.user.screen_name}: #{tweet.text}" 
end

