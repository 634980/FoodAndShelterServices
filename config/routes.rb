Rails.application.routes.draw do
 
  root 'employee#home'
  resources :employee
  get 'addemployee', to: 'employee#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
 # get :SessionsController, :full => true
 resources :sessions do
  get :autocomplete_employee_username, :on => :collection
end

  
end
