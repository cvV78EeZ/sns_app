Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html/posts/new

  # Defines the root path route ("/")
  # root "articles#index"
  
  #PostsController
  get 'posts/new', to: 'posts#new', as: 'new_post'
  get '/', to: 'posts#index', as: 'index_post'
  post 'posts/new', to: 'posts#create', as: 'create_post'
  
  get 'topics/new', to: 'topics#new', as: 'new_topics'
  post 'topics/new', to: 'topics#create', as: 'create_topics'
  
  get 'topics/edit', to: 'topics#edit', as: 'edit_topics'
  post 'topics/edit', to: 'topics#update', as: 'update_topics'
  
  get 'topics/myname', to: "topics#myname", as: 'myname_topics'
  
  get '/profile', to: 'profile#index', as: 'index_profile'
  
  get '/profile/edit', to: 'profile#edit', as: 'edit_profile'
end

