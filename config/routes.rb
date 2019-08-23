Rails.application.routes.draw do
  resources :parks
  resources :states
  # This is custom route for scope
  get 'most_parks', :to => 'states#most_state'
end
