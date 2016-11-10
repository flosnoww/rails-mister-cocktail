Rails.application.routes.draw do

  resources :cocktails, only: [:index, :new, :show, :create, :destroy] do
    resources :doses, only: [:index, :show, :new, :create, :destroy], shallow: true
    resources :ingredients, only: [:index, :show]
  end
end
