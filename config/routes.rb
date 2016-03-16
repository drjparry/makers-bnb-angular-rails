Rails.application.routes.draw do

  #root 'spaces#index'

  get 'spaces' => 'spaces#index'

  resources :spaces
end
