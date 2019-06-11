Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      get 'challenges', to: 'challenges#index'
    end
  end

end
