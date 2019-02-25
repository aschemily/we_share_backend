Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v1 do
        resources :users
        resources :groups
        resources :topics
        resources :favorites
        resources :user_favorites

        # get '/profile', to: 'users#profile'
        post '/login', to: "auth#login"
        get '/current_user', to: "auth#get_user_from_token"

      end
    end




end
