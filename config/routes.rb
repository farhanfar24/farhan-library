Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#welcome'
  
  resources :transactions
  resources :users
  resources :books

  # Custom routes
  get '/rent/:id', to: 'books#rent', as: 'rent'
  post '/create-transaction/', to: 'books#transaction'
end
