Fundraiser::Engine.routes.draw do
  devise_for :users, :class_name => "Fundraiser::User", :module => 'fundraiser/devise'

  root :to => 'home#show'

  namespace :manage do
    resources :rewards
  end
end
