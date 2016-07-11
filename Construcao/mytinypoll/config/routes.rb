Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  authenticated :user do
    root 'home#auth', as: :authenticated_root
    
    # Any user routes
    post 'admin/creator_permission_list/add'
    get 'create_poll', to: 'home#create_poll', as: :create_poll
    get 'search_poll', to: 'home#search_poll', as: :search_poll
    get 'my_polls', to: 'home#my_polls', as: :my_polls
    
    # Admin routes
    get 'admin/creator_permission_list/approve_request'
    get 'admin/creator_permission_list/deny_request'
  end
  
  root :to => 'home#index'
end