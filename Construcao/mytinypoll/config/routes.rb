Rails.application.routes.draw do
  post 'admin/creator_permission_list/add'
  post 'admin/creator_permission_list/approve_request'
  post 'admin/creator_permission_list/deny_request'
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  authenticated :user do
    root 'home#auth', as: :authenticated_root
  end

  root :to => 'home#index'
end
