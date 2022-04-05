Rails.application.routes.draw do
  
  #resources :baskets
  #resources :glasses
 # resources :prices
  # resources :users
  # resources :admins
  # resources :lenses
  # resources :frames
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :admin do

      resources :frames
      #the end point of the request 
      #post :frames, to: 'frames#create'
      resources :lenses
      #the end point of the request
      #post :lenses, to: 'lenses#create'
    end
  end
  namespace :api do
   namespace :user do
   get 'activeframes', to: 'frames#show_activeframes'
   get 'frameprice/:price_id', to: 'frames#get_frame_price'
   get 'lenses', to: 'lenses#show_lenses'
   get 'lenseprice/:price_id', to: 'lenses#get_lense_price'
   resources :glasses
   resources :orders
  end
  end
end
