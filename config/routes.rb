Rails.application.routes.draw do
  
  resources :request_comments
  resources :requests
  resources :image_comments
  resources :images
  devise_for :users
end
