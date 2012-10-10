Fundraiser::Engine.routes.draw do
  devise_for :users, :class_name => "Fundraiser::User", :module => 'fundraiser/devise'

  root :to => 'home#show'

  namespace :manage do
    resource :settings
    root :to => redirect('/fundraiser/users/sign_in')
    resources :rewards
  end

  resources :rewards, :only => :index
  resource :thanks, :only => :show
  resources :ipns
end
