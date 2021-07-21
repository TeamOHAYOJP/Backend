Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      resources :test, only: %i[index]

      # authentication
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }

      namespace :auth do
        resources :sessions, only: [:index]
      end

      resources :users, only: [:index, :show, :update]
      
      delete "/daily_rankings/destroy_all" => "daily_rankings#destroy_all"
      get "/daily_rankings/is_user_ranked_in" => "dailiy_rankings#is_user_ranked_in"
      resources :daily_rankings, only: %i[index create]

    end
  end
end
