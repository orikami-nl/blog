Blog::Engine.routes.draw do
  resources :posts
  root :to => "blog#index"
end
