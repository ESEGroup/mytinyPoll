Rails.application.routes.draw do
  post 'admin/creator_permission_list/add'
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  authenticated :user do
    root 'home#auth', as: :authenticated_root
  end

  root :to => 'home#index'
end
