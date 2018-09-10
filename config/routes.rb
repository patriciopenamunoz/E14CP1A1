Rails.application.routes.draw do
  root 'categories#index'
  resources :categories do
    resources :products, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
