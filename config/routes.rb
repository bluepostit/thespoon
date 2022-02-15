Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # See all restaurants
  get 'restaurants', to: 'restaurants#index'

  # GET empty form for creating a new Restaurant
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # Receive the filled-in form to create a new Restaurant
  post 'restaurants', to: 'restaurants#create'

  # See a SPECIFIC restaurant - by its ID
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # GET filled-in form for editing an EXISTING restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # UPDATE an existing restaurant with the data from the form
  patch 'restaurants/:id', to: 'restaurants#update'

  # DELETE an existing restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # resources :restaurants
end
