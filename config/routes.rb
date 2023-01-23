Rails.application.routes.draw do
  resources :products, controller: 'api/v1/products', param: :code, except: [:create]
  root "api/v1/home#welcome"
end
