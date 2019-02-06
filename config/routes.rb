Rails.application.routes.draw do
 resources 'gossips'
 resources 'users'
 resources 'city'
 resources  'comments'
 resources 'static_pages'
 root 'gossips#index'
end
