Rails.application.routes.draw do
  root 'events#index'



  resources :registers
  resources :events
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # declare devise without registration module for disabled
  # sign_up fonction
  devise_for :users,  skip: ['registrations'],
                      # change default path '/users/' by '/account/users'
                      # path_prefix: 'account',
                      controllers: { sessions: 'users/sessions',
                                     # commented because module is disabled.
                                     registrations: 'users/registrations',
                                     passwords: 'users/passwords',
                                     confirmations: 'users/confirmations',
                                     unlocks: 'users/unlocks' }
  as :user do
    # As the registration module is disabled
    # it recreates the route for edit and delete current_user account
    get 'users/edit(.:format)' => 'users/registrations#edit', as: 'edit_user_registration'
    put '/users(.:format)' => 'users/registrations#update', as: 'user_registration'
    patch '/users(.:format)' => 'users/registrations#update'
    # delete 'users(.:format)' => 'users/registrations#destroy', as: 'registration'

    # strength the route "sign_up" has be redirected to the route "sign_in"
    get '/users/sign_up(.:format)', to: redirect('/account/users/sign_in')
  end

end
