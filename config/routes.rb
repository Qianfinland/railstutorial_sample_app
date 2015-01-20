Rails.application.routes.draw do
  root 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  #http://localhost:3000/contact
  #get 'users/new'
  get 'signup'  => 'users#new'

  #get 'sessions/new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  #???listing 11.29 does not include this two about password_reset
  # get 'password_resets/new'
  # get 'password_resets/edit'

  #adding users resources to the route file
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy, :index]

  #get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # get  'static_pages/contact'
  #http://localhost:3000/static_pages/about

end
