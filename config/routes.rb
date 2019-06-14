Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :challenges, only: [:index, :create, :destroy, :update]
    end
  end

  post '/registration', to: 'auth#create'
  post '/login', to: 'auth#login'
  get '/user', to: 'user#show_user'
  get '/user/challenges', to: 'user#show_challenges'
  post '/user/find_user', to: 'user#find_user'

end
