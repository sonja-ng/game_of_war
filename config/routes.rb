Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do 
    resources :players, only: [:create, :show, :update]
  end
  root "static_pages#root"
end
