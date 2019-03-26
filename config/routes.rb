Rails.application.routes.draw do
  
  namespace :brain do
    resources :users
  end









#get path leads to welcome/log in
get '/brain', to: 'profile#login'

post '/brain', to: 'profile#create' #creates a new account


# need a post for '/'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
