Rails.application.routes.draw do

  namespace :brain do
    resources :users do
      get '/profile', to: 'profile#show'
      get '/profile/edit', to: 'profile#edit'
      post '/profile', to: 'profile#update', as: 'post_profile_update'
      resources :posts, only: [:show, :destroy, :new, :create]
    end
  end









#get path leads to welcome/log in
get '/brain', to: 'profile#login'

post '/brain', to: 'profile#create' #creates a new account


# need a post for '/'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
