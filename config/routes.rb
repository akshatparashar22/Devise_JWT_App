Rails.application.routes.draw do
  devise_for :users,
              controllers: {
                session: 'users/sessions',
                registration: 'users/registrations'
              }
              
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
