class TwitterController < ApplicationController

	before_filter :twitter_init
	
	def tweets
		@tweets = @client.user_timeline
	end

	def feed
		@tweets = @client.home_timeline
	end

	def post_tweet
		begin
			@client.update!(params[:tweet])
			flash[:notice] = "Your tweet created successfully"
		rescue
			flash[:error] = "There was an error in saving your tweet. Why don't you take a break and try again?"
		end
		redirect_to tweets_twitter_index_path
	end

	def followers
		@followers = @client.followers
	end

	def following
		@following = @client.following
	end

	def graphs
		tweet_count = @client.user_timeline.count
		retweet_count = @client.retweets.count
	end

end