Rails.application.routes.draw do
  concern :api_base do
    resources :parks
    resources :states
    # This is custom route for scope
    get 'most_parks', :to => 'states#most_state'
    get 'random_place', :to => 'states#suprising_state'
    get '/search', :to => 'states#search'
  end

  namespace :v1 do
    concerns :api_base
  end
end
