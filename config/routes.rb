Rails.application.routes.draw do

  namespace :api do
    namespace :v1, defaults: { format: 'json' } do

      post '/registration', to: 'user#create'
      post '/login', to: 'user#login'
      get '/user/challenges', to: 'challenges#show_challenges'
      get '/user/calendars', to: 'calendars#show_calendars'
      get '/user/find_user', to: 'user#find_user'
      get '/user/locker', to: 'user#show_locker'
      patch '/user/updatelocker', to: 'user#update_locker'

      resources :challenges, only: [:index, :create, :destroy, :update] do 
        resources :calendars, only: [:index, :update]
      end
    end
  end

  # post '/registration', to: 'user#create'
  # post '/login', to: 'user#login'
  # get '/user/challenges', to: 'user#show_challenges'
  # get '/user/find_user', to: 'user#find_user'
  # get '/user/locker', to: 'user#show_locker'
  # patch '/user/updatelocker', to: 'user#update_locker'

end
