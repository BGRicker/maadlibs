Rails.application.routes.draw do
  root 'static_pages#index'
  resources :songs

	match "/500", :to => "posts#new", :via => :all
end
