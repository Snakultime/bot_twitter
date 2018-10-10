require "dotenv"

Dotenv.load

require "twitter"

require "pry"

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CLIENT_KEY"]
  config.consumer_secret     = ENV["CONSUMER_KEY_SECRET"]
  config.access_token        = ENV["ACCESS_KEY_TOKEN"]
  config.access_token_secret = ENV["ACCES_KEY_TOKEN_SECRET"]
end

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "YOUR_CONSUMER_KEY"
  config.consumer_secret     = "YOUR_CONSUMER_SECRET"
  config.access_token        = "YOUR_ACCESS_TOKEN"
  config.access_token_secret = "YOUR_ACCESS_SECRET"
end

# ligne qui permet de tweeter
