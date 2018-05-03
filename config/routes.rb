Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
  
  # get 'static_pages/home' # No longer needed as the root route above is the same.

  get '/help', to: 'static_pages#help' #, as: 'helf'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'

  # get 'users/new' # This was automatically created when generate was called, changed path to the below.
  get '/signup', to: 'users#new'

  # allows access to users/1
  resources :users

end
