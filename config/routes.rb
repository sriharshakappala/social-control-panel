Rails.application.routes.draw do
  
  devise_for :users
  
  resources :dashboards, only: [:index]
  
  resources :twitter do
  	collection do
  		get 'tweets'
  		get 'tweets_and_replies'
  		get 'followers'
  		get 'following'
  		get 'graphs'
  	end
  end

  resources :facebook do
  	collection do
  		get 'recent_posts'
  		get 'friends'
  		get 'groups'
  		get 'invites'
  		get 'birthdays'
  	end
  end

  root 'dashboards#index'
end
