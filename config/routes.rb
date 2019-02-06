Rails.application.routes.draw do
  get 'gossip_comments/index'
  get 'gossip_comments/new'
  get 'gossip_comments/show'
  get 'gossip_comments/create'
  get 'gossip_comments/edit'
  get 'gossip_comments/update'
  get 'gossip_comments/destroy'
 resources :gossips do
   resources :comments
 end
 resources 'users'
 resources 'city'
 get '/contact', to: "static_pages#contact"
 get '/team', to: "static_pages#team"
 root 'gossips#index'
end
