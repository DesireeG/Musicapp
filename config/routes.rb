Rails.application.routes.draw do

  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#delete'

  
    root 'welcome#index'
   

  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'



root 'sessions#new'
 resources 'sessions'
 get '/playlist', to: 'posts#post'
 get '/colabs', to: 'posts#show'

 get '/login', to: 'login#loginpage'
end

end
