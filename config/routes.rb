Rails.application.routes.draw do
  resources :breweries, only: [:index, :new, :create, :show]
  resources :beers, only: [:index, :new, :create, :show, :delete]
  resources :reviews, only: [:new, :create, :index, :show, :delete]
  resources :users, only: [:new, :create, :show]
  post '/beers/:id/like', to: 'beers#like_beer'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
