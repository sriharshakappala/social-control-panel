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

  resources :services do
    collection do
      get 'configure'
    end
  end

  root 'twitter#tweets'
end
