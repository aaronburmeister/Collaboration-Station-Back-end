Rails.application.routes.draw do
  
  resources :image_comments
  resources :images
  devise_for :users
end
