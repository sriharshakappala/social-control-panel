class TwitterController < ApplicationController

	before_filter :twitter_init
	
	def tweets
		@tweets = @client.user_timeline
	end

	def post_tweet
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