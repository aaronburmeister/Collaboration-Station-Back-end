Rails.application.routes.draw do
  
  scope :api, defaults: { format: :json } do
    devise_for :users
    resources :request_comments
    resources :requests
    resources :image_comments
    resources :images
  end
end
