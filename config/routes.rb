Rails.application.routes.draw do

  resources :peticiones
  get 'peticiones/view/listpeticions' => 'peticiones#listpeticions'
  
  resources :messages
  
  resources :clientes

  resources :home

  ## Settings
  get 'settings' => 'settings#index'

  devise_for :users 
  
  devise_scope :user do
    
    authenticated :user do
      root 'peticiones#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get 'renders/:statususer' => 'renders#statusupdate'

  #Api
  namespace :api, defaults: {format: 'json'} do
    resources :peticiones
    resources :clientes
  end

end
