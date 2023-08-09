Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  #PostsController
  get 'posts/new', to: 'posts#new', as: 'new_post'
  
  get '/topics/new', to: 'new Action', as: 'new_post'
  
  get '/topics/edit', to: 'edit Action', as 'new_post'
  
  
end

