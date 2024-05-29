Rails.application.routes.draw do
  root 'menu_items#index' # Home page displays the menu items
  resources :menu_items, only: [:index, :show]
  resources :orders, only: [:show, :create, :update, :destroy] do
    resources :order_items, only: [:create, :update, :destroy]
    resources :payments, only: [:new, :create]
  end
end
