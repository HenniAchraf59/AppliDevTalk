Rails.application.routes.draw do
  root 'events#index'



  resources :registers
  resources :events
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
