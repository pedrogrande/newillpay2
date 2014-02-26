Newillpay2::Application.routes.draw do
  resources :offers do
  	member do
  		post :accept
  		post :reject
  	end
  end

  resources :shopper_profiles

  resources :addresses

  resources :retailer_profiles

  get "admin/index"
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end