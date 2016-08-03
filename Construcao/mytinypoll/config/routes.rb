Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  authenticated :user do
    root 'home#auth', as: :authenticated_root
    
    # Any user routes
    post 'admin/creator_permission_list/add'
    get 'create_poll', to: 'home#create_poll', as: :create_poll
    get 'search_poll', to: 'home#search_poll', as: :search_poll
    get 'my_polls', to: 'home#my_polls', as: :my_polls
    
    # Poll routes
    post 'new_poll', to: 'poll/poll#new_poll', as: :new_poll
    post 'query_poll', to: 'poll/poll#query_poll', as: :query_poll
    post 'invite_people', to: 'poll/invite_people#invite_people', as: :invite_people
    get '/poll/:id', to: 'poll/poll#show', as: :show_poll
    post 'answer_poll', to: 'poll/answer_poll#answer_poll', as: :answer_poll
    get '/result/poll/:id', to: 'poll/show_result#show', as: :show_result_poll
    
    # Admin routes
    get 'admin/creator_permission_list/approve_request'
    get 'admin/creator_permission_list/deny_request'
  end
  
  root :to => 'home#index'
end