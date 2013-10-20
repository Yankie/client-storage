ClientStorage::Application.routes.draw do
  resources :shared_resources

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :groups
end