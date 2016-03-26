Rails.application.routes.draw do
  get 'national_names/index'

  get 'state_names/index'

  resources :national_names
  resources :state_names
end
