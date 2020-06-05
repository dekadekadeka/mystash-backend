Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :projects
  post '/login', to: 'auth#create'
  get '/stash', to: 'users#stash'
  get '/init-state', to: 'auth#init_state'
  resources :patterns, only: [:index, :show, :update, :create, :destroy]
  resources :fabrics, only: [:index, :show, :update, :create, :destroy]
  resources :notions, only: [:index, :show, :update, :create, :destroy]
  resources :yarns, only: [:index, :show, :update, :create, :destroy]
  resources :flosses, only: [:index, :show, :update, :create, :destroy]
  resources :needles, only: [:index, :show, :update, :create, :destroy]
end
