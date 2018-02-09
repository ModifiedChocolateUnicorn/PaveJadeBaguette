Rails.application.routes.draw do
  resources :accessories
  resources :jewels
  resources :bases
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
