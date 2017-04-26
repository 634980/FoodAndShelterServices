Rails.application.routes.draw do

  root 'employees#home'
  
  resources :employees
  resources :clients
  resources :sites
  resources :service1s
  
  get 'addemployee', to: 'employees#new'
  get 'addclient', to: 'clients#new'
  get 'addsite' , to: 'sites#new'
  get 'addservice', to: 'service1s#new'
  get 'showmap', to: 'location#index'
  get 'contact', to: 'employees#contact'
  get 'about', to: 'employees#about'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
 # get :SessionsController, :full => true
 resources :sessions do
  get :autocomplete_employee_username, :on => :collection  #:full => true
end

  
end
