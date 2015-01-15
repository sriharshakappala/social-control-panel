class TwitterController < ApplicationController

	before_filter :twitter_init
	
	def tweets
		@tweets = @client.user_timeline
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

	def tweets_and_replies
	end

	def followers
	end

	def following
	end

	def graphs
	end

end