Rails.application.routes.draw do
 resources 'gossips'
 resources 'users'
 resources 'city'
 resources  'comments'
 get '/contact', to: "static_pages#contact"
 get '/team', to: "static_pages#team"
 root 'gossips#index'
end
