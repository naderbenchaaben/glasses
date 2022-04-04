Rails.application.routes.draw do
  resources :prices
  resources :users
  resources :admins
  resources :lenses
  resources :frames
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
