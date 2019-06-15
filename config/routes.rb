Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :challenges, only: [:index, :create, :destroy, :update]
    end
  end

  post '/registration', to: 'auth#create'
  post '/login', to: 'auth#login'
  get '/user/challenges', to: 'user#show_challenges'
  get '/user/find_user', to: 'user#find_user'
  get '/user/locker', to: 'user#show_locker'
  patch '/user/updatelocker', to: 'user#update_locker'

end
