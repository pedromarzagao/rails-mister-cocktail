Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create ] do
    resource :doses, only: [:index, :new, :create]
  end

  resources :ingredients, only: [:index, :new, :create] do
    resource :doses, only: [:index, :new, :create]
  end
end
