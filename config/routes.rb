Rails.application.routes.draw do
root to: 'home#index'

get '/index', to: 'home#index'
get '/search' => 'parks#search'
get '/random' => 'parks#random'

 resources :parks
end
