Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations',  }
  resources :artists
  resources :orders do
    resources :images
  end
  
  root 'home#index'

  get 'setup/index'
  get '/setup/open' => 'setup#open'
  post '/setup/generate' => 'setup#generate'
  get '/setup' => 'setup#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
