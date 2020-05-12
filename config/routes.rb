Rails.application.routes.draw do
  
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }
    resources :request_comments
    resources :requests
    resources :image_comments
    resources :images
    resources :users
  end
end
