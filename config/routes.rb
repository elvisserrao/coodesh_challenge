Rails.application.routes.draw do
  resources :products, param: :code, except: [:create]
  root "api/v1/home#welcome"
end
