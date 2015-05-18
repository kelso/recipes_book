Rails.application.routes.draw do
  resources :recipes, only: [:index, :new, :create, :edit, :update]
end
