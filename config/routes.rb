Rails.application.routes.draw do
 resources :gossips do
   resources :comments
 end
 resources 'users'
 resources 'city'
 get '/contact', to: "static_pages#contact"
 get '/team', to: "static_pages#team"
 root 'gossips#index'
end
