Fundraiser::Engine.routes.draw do
  devise_for :users, :class_name => "Fundraiser::User"

  root :to => 'home#show'

end
