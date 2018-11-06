Rails.application.routes.draw do
  root to: 'pages#home'
  get '/about' =>'pages#about'
  get '/contact' => 'pages#contact'
  get '/cgv' => 'pages#cgv'
  get '/privacy' => 'pages#privacy'

  resources :relocations, :storages, :addresses, only: [:index, :new, :create, :show]

  #root to: 'application#home'
end
