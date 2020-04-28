Rails.application.routes.draw do
  
  resources :requests
  resources :image_comments
  resources :images
  devise_for :users
end
