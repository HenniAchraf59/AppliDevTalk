Rails.application.routes.draw do
  root 'events#index'
  resources :event_users
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # declare devise without registration module for disabled
  # sign_up fonction
  devise_for :users



end
