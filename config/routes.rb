Rails.application.routes.draw do
  root "artists#index"
  namespace :api do
    resources :artists do
      resources :songs
    end
  end

  resources :artists do
    resources :songs
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
