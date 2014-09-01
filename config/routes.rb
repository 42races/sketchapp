Rails.application.routes.draw do
  resources :sketches

  root 'sketches#index'
end
