Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :projects
  # post '/login', to: 'auth#create'
  # get '/stash', to: 'users#stash'
  # get '/init-state', to: 'auth#init_state'
  resources :patterns, only: [:index, :show, :update, :create, :destroy]
  resources :fabrics, only: [:index, :show, :update, :create, :destroy]
  resources :notions, only: [:index, :show, :update, :create, :destroy]
  resources :yarns, only: [:index, :show, :update, :create, :destroy]
end
