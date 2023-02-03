Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 resources :posts
  # Defines the root path route ("/")
  root "home#index"
  resources :categories  
  # delete 'posts/:id', to: 'posts#destroy'
  resources :posts do
    resources :likes
  end

end
