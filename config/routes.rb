Rails.application.routes.draw do
  resources :ad_shopping_hists, only: [:index, :show, :update]
  resources :infos, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :ad_items
  resources :ad_users, only: [:index, :edit, :update, :destroy]
  get 'ad_users/top' => 'ad_users#top'
  resources :shopping_hists, only: [:index, :create, :show]
  resources :carts, only: [:index, :create, :show, :destroy, :update]
  get 'carts/cart_cmp' => 'carts#carts_cmp'
  resources :items, only: [:index, :show]
  resources :users, only: [:show, :update, :edit]
  get 'users/resign' => 'users#resign'
  get 'users/resign_cmp' => 'users#resign'
  devise_for :users
  root to: 'users#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
