Rails.application.routes.draw do
  get 'user_food/index'
  resources :foods
  devise_for :users
  get '*path', to: 'home#index', constraints: ->(request){ request.format.html? }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
