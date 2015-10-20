Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root 'welcome#index'

   resources :hosts
   resources :guests
   post 'arrangement', to: "arrangements#create", as: 'create_arrangement'
   resources :arrangements

  get 'unmatched', to: "guests#unmatched"
  get 'about', to: "welcome#about"

end
