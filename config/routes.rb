Rails.application.routes.draw do
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#delete'

  
    root 'welcome#index'
   

  
end
