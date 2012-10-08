Fundraiser::Engine.routes.draw do
  devise_for :users, :class_name => "Fundraiser::User"

end
