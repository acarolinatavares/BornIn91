RailsPadrao::Application.routes.draw do

  resources :comentarios

  resources :usuarios

  resources :posts


  get 'auth/:provider/callback' => 'sessions#create'
  get 'auth/failure' => redirect('/')
  get 'signout' => 'sessions#destroy', as: 'signout'

  root :to => 'application#home'

  get 'sobre' => 'application#sobre'

end