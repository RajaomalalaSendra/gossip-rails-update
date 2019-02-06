Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/show'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
 resources 'gossips'
 #ressources 'users'
 #resources 'city'
 #resources  'comment'
end
