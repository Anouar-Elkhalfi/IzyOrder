Rails.application.routes.draw do
  root 'menu_items#index' # Home page displays the menu items
  resources :menu_items, only: [:index, :show]
end
