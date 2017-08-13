Rails.application.routes.draw do
  resources :comments
  resources :authors, param: :slug
  resources :posts, param: :slug
  get '/posts/author/:author' => 'posts#index', as: 'posts_by_author'
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
