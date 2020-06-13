Rails.application.routes.draw do
root to: 'parks#index'

get '/index', to: 'parks#index'
get '/search' => 'parks#search'
get '/random' => 'parks#random'

 resources :parks
end
