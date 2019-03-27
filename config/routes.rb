Rails.application.routes.draw do

  namespace :brain do
    resources :sessions, only: [:new, :create, :destroy]
    resources :users do
      post '/user_influencer_relationships', to: 'user_influencer_relationships#create'
      get '/profile', to: 'profile#show'
      get '/profile/edit', to: 'profile#edit'
      post '/profile', to: 'profile#update', as: 'post_profile_update'
      resources :posts, only: [:show, :destroy, :new, :create] do
        post '/brains', to: 'brains#create'
        post '/comments', to: 'comments#create'
      end
    end
  end
end
