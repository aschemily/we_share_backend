Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v1 do
        resources :users
        resources :groups
        resources :topics
        # resources :favorites
        resources :user_favorites

        # get '/profile', to: 'users#profile'
        get '/users/:id/favorites', to: 'favorites#index'
        get '/users/:id/conversations', to: 'conversations#index'
        get '/users/:id/conversations/:id/messages', to: 'conversations#show_messages'
        get '/users/:id/conversations/:id/users', to: 'conversations#show_users'
        post '/login', to: "auth#login"
        get '/current_user', to: "auth#get_user_from_token"
        # get '/render_favorites/:id', to: "user_favorites#render_favorites"


      end
    end




end
