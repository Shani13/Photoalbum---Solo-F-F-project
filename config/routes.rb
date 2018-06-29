Rails.application.routes.draw do
  root 'users#new'
  resources :users

  resources :pictures

  get '/login' =>'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
