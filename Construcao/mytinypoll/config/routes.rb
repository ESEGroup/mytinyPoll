Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  authenticated :user do
    root 'home#auth', as: :authenticated_root
    
    # Any user roots
    post 'admin/creator_permission_list/add'
    
    # Admin roots
    get 'admin/creator_permission_list/approve_request'
    get 'admin/creator_permission_list/deny_request'
  end
  
  root :to => 'home#index'
end
