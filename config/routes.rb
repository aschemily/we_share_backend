Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v1 do
        resources :users
        resources :groups
        resources :topics
        resources :favorites
        resources :user_favorites

        post '/signup', to: "users#create"
        get 'get_user', to: "auth#show"

      end
    end




end
