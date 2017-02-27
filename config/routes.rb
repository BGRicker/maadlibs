Rails.application.routes.draw do
  root 'songs#new'
  resources :songs
end
