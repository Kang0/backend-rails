Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :challenges, only: [:index, :create, :destroy, :update]
    end
  end

  

end
