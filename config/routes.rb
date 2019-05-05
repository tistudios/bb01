Rails.application.routes.draw do
  devise_for :users
  resources :abeyances
  resources :insurers
  resources :underwriters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'underwriters#new'

end
