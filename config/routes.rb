Fundraiser::Engine.routes.draw do
  devise_for :users, :class_name => "Fundraiser::User", :module => 'fundraiser/devise'

  root :to => 'rewards#index'

  namespace :manage do
    root :to => 'rewards#index'
    resource :settings
    resources :rewards

  end

  mount Crowdblog::Engine => '/manage/blog'

  resources :rewards, :only => :index
  resource :thanks, :only => :show
  resources :ipns

end
