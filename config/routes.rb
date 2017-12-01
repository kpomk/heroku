Rails.application.routes.draw do
  get 'microposts/create'

  get 'microposts/destroy'

  get 'toppages/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  #get 'users/index'

  #get 'users/show'

  #get 'users/new'

  #get 'users/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: 'tasks#index'
  
  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:indext, :show, :new, :create, :edit, :delete]
  
  resources :tasks
end
