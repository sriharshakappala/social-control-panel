class TwitterController < ApplicationController
	
	def tweets
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = "VzDTU00oeY6X0YOQ0x1bf2dli"
		  config.consumer_secret     = "BLn1nqFGFDXDKDac1yskkYm8iprx4IV3SUW2Dg80wK9kc1Ti5z"
		  config.access_token        = "2976980166-s0rU6BKkoqYMSpDSjMpUzvuFmynfSiCOX4hdJdQ"
		  config.access_token_secret = "k7iD5qJ031aIXYB38YjtZQwGG6KTJJo4HHa8I17P8I7kO"
		end
		@tweets = client.user_timeline
	end

	def tweets_and_replies
	end

	def followers
	end

	def following
	end

	def graphs
	end

end