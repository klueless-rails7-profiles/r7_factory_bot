Rails.application.routes.draw do
  get 'home/index'
  get 'home/test_data'
  get 'home/sample_data'
  root 'home#index'
  resources :videos
  resources :articles
  resources :projects
  resources :employee_roles
  resources :employees
  resources :roles
  resources :companies
  resources :regions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
