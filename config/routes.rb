Rails.application.routes.draw do
  root to: 'contacts#index'
 
  resources :contacts
  resources :inquiries
  resources :home
  resources :access
  resources :blog
  resources :company
  resources :menu
  resources :list
  
end
