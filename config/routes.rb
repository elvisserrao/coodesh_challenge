Rails.application.routes.draw do
  resources :products, except: [:create]
  root "api/v1/home#welcome"
end
