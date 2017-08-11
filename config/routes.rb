Rails.application.routes.draw do
  resources :artists
  resources :orders
  root 'home#index'

  get 'setup/index'
  get '/setup/open' => 'setup#open'
  post '/setup/generate' => 'setup#generate'
  get '/setup' => 'setup#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
