Rails.application.routes.draw do
  root to: 'home#index'
  post '/contact-requests', to: 'contact_requests#create'
  get 'home/download_booklet'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/admin', to: 'admin_dashboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
