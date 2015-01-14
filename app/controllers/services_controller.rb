class ServicesController < ApplicationController
	def configure
		@twitter_accout = TwitterAccount.new
	end
	def create_twitter_account
		@twitter_account = current_user.build_twitter_account(twitter_params)
	end
	private
	def twitter_params
	end
end