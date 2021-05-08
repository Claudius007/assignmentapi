Rails.application.routes.draw do

  resources :workers, only: [:index, :create, :destroy]
  resources :work_orders, only: [:create, :update]

  #get 'workers/:work_order_id', to: 'workers#show_worker'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
