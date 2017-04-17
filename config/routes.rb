Rails.application.routes.draw do
 
  get 'clients/new'

  root 'employees#home'
  resources :employees
  resources :clients
  get 'addemployee', to: 'employees#new'
  get 'addclient', to: 'clients#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
 # get :SessionsController, :full => true
 resources :sessions do
  get :autocomplete_employee_username, :on => :collection  #:full => true
end

  
end
