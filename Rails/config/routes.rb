Rails.application.routes.draw do
  root 'home#index'
  get 'login', to: 'user_sessions#new'  
  post 'login', to: 'user_sessions#create'  
  delete 'logout', to: 'user_sessions#destroy'  
  get 'signup', to: 'users#new'


  resources :users, only: %i(new create)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
