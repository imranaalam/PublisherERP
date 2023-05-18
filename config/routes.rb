Rails.application.routes.draw do
  resources :carriage_costs
  resources :paper_costs
  resources :book_authors
  resources :authors
  root 'books#index'
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
