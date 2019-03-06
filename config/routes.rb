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

        get '/conversations', to: 'conversations#index'

        get '/conversations/:id', to: 'conversations#show'

        post '/users/:id/messages', to: 'messages#create'
        get '/users/:id/messages', to: 'messages#show'

        #get 'users/:id/usermessages', to: 'messages#show_messages'

        #post '/users/:id/conversations', to: 'conversations#create'

        post '/new_messages_for_only_two/:id1/:id2', to: 'messages#new_message'


        post '/login', to: "auth#login"
        get '/current_user', to: "auth#get_user_from_token"
        # get '/render_favorites/:id', to: "user_favorites#render_favorites"

        #mount ActionCable.server => '/cable'
        get '/show_messages_for_only_two/:id1/:id2', to: 'messages#show_messages_for_only_two'
      end
    end




end
