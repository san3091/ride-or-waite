Rails.application.routes.draw do
  root to: 'home#index'
  post '/contact-requests', to: 'contact_requests#create'
  get 'home/download_booklet'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
