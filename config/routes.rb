Rails.application.routes.draw do
  resources :jewels
  resources :ends
  resources :bases
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
