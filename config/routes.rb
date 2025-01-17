Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/patients/:id', to: 'patients#show', as: 'patient' and this in the corresponding view:
  # <%= link_to 'Patient Record', patient_path(@patient) %>

  resource :order_items, only: [:create, :destroy]

  post '/tocontact', to: 'tocontact#create', as: 'tocontacts'

  resource :cart, only: [:show]

  resources :products, only: [:index, :show]

  patch '/orders', to: 'orders#edit', as: 'order'

end
