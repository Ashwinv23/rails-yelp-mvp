Rails.application.routes.draw do
  # add CRUD methods to restaurants except update and destroy since visitors are not allowed to do it
  resources :restaurants, except: [:update, :destroy] do
    # add CRUD methods to reviews only for new and create
    resources :reviews, only: [:new, :create]
  end
end
