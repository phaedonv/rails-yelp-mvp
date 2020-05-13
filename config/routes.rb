Rails.application.routes.draw do
  resources :reviews
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: [ :destroy ]
end
