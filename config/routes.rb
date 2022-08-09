Rails.application.routes.draw do
  resources :product_varients
  resources :products
 
  root 'products#index'
end
