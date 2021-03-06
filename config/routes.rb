Rails.application.routes.draw do

  get 'google/map'
  root :to => 'pages#home'

  get '/login' => 'session#new'         # This will be our sign-in page.
  post '/login' => 'session#create'     # This will be the path to which the sign-in form is posted
  delete '/login' => 'session#destroy'

  resources :users

  resources :projects

  resources :bugs

end
