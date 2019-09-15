Rails.application.routes.draw do
  root to: 'contact#index'
 
  resources :contacts
  resources :inquiries
end
