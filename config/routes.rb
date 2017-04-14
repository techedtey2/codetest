Rails.application.routes.draw do
  root 'welcome#index'

  resources :posts do
    member do
      resources :comments
    end
  end
  devise_for :users
  resources :roles
  resources :users

  get 'admin/dashboard'
  get 'admin/posts' => 'admin#posts'
end