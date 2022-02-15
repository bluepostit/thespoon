Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # See all restaurants
  get 'restaurants', to: 'restaurants#index'

  # GET empty form for creating a new Restaurant
  get 'restaurants/new', to: 'restaurants#new'
  # Receive the filled-in form to create a new Restaurant
  post 'restaurants', to: 'restaurants#create'

  # See a SPECIFIC restaurant - by its ID
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
end
