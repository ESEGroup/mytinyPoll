Rails.application.routes.draw do
  get 'home/index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  
  authenticated :user do
    root 'home#auth', as: :authenticated_root
  end

  root :to => 'home#index'
end
