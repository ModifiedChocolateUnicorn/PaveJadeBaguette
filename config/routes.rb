Rails.application.routes.draw do
  resources :accessories
  resources :jewels
  resources :bases
  #custom users routes
  get 'users/login' => 'users#login'
  post 'users/login' => 'users#login_check'
  get 'users/logout' => 'users#logout'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


