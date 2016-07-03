Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  
  authenticated :user do
    root 'home#auth', as: :authenticated_root
  end

  root :to => 'home#index'
end
