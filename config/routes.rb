Rails.application.routes.draw do
  get 'home/index'
  get 'home/reseed'
  root 'home#index'
  resources :videos
  resources :articles
  resources :projects
  resources :employee_roles
  resources :employees
  resources :companies
  resources :regions
  resources :roles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
