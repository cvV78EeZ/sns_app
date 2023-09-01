Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'posts#index', as: 'index_post'

  # PostsController
  get 'posts/new', to: 'posts#new', as: 'new_post'
  post 'posts/new', to: 'posts#create', as: 'create_post'
  get 'posts/edit/:id', to: 'posts#edit', as: 'edit_post'
  post 'posts/edit/:id', to: 'posts#update', as: 'update_post'
  delete '/posts/delete/:id', to: 'posts#destroy', as: 'delete_post'

  get 'topics/myname', to: "topics#myname", as: 'myname_topics'
  get '/profile', to: 'profile#index', as: 'index_profile'
  get '/profile/edit', to: 'profile#edit', as: 'edit_profile'

  get 'topics/new', to: 'topics#new', as: 'new_topic'
  post 'topics/new', to: 'topics#create', as: 'create_topics
end
