Rails.application.routes.draw do
  resources :registers
  root 'events#index'
<<<<<<< HEAD

=======
  
  resources :registers
>>>>>>> develop
  resources :events
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
