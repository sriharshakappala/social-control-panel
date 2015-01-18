Rails.application.routes.draw do
  
  devise_for :users
  
  resources :dashboards, only: [:index]
  
  resources :twitter do
  	collection do
  		get 'tweets'
      get 'feed'
      post 'post_tweet'
  		get 'tweets_and_replies'
  		get 'followers'
  		get 'following'
  		get 'graphs'
      get 'trends'
      get 'block'
      get 'retweet'
  	end
  end

  resources :services do
    collection do
      get 'configure'
    end
  end

  root 'twitter#tweets'
end
