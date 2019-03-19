Rails.application.routes.draw do
  resources :ad_shopping_hists, only: [:index, :show, :update]
  resources :infos, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :ad_items
  resources :ad_users, only: [:index, :edit, :update, :destroy]
  get 'top' => 'ad_users#top', as:'ad_top'
  resources :shopping_hists, only: [:index, :create, :show]
  resources :carts, only: [:index, :create, :show, :destroy, :update]
  get 'cart_cmp' => 'carts#carts_cmp', as:'cart_cmp'
  resources :items, only: [:index, :show]
  resources :users, only: [:show, :update, :edit]
  get 'resign' => 'users#resign', as:'resign'
  get 'resign_cmp' => 'users#resign', as:'resign_cmp'
  devise_for :users
  root to: 'users#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
