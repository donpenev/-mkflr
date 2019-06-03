Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/patients/:id', to: 'patients#show', as: 'patient' and this in the corresponding view:
  # <%= link_to 'Patient Record', patient_path(@patient) %>

  get 'products', to: 'products#index'

  post '/order_items', to: 'order_items#create', as: 'order_items'

  resource :cart, only: [:show]

end
