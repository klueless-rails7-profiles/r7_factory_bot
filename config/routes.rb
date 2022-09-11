Rails.application.routes.draw do
  get 'home/index'
  get 'home/reseed'
  root 'home#index'
  resources :projects
  resources :articles
  resources :employees
  resources :tenants
  resources :apps
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
