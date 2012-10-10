Fundraiser::Engine.routes.draw do
  devise_for :users, :class_name => "Fundraiser::User", :module => 'fundraiser/devise'

  root :to => 'home#show'

  namespace :manage do
    root :to => 'rewards#index'
    resource :settings
    resources :rewards
  end

  resources :rewards, :only => :index
  resource :thanks, :only => :show
  resources :ipns
end
