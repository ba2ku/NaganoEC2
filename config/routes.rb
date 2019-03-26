Rails.application.routes.draw do
  get 'address_hists/create'
  get 'ordered_items/create'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  resources :users do
      get :mypage
  end
  resources :ad_shopping_hists, only: [:index, :show, :update]
  resources :infos, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :ad_items
  resources :ad_users, only: [:index, :edit, :update, :destroy]
  get 'top' => 'ad_users#top', as:'ad_top'
  resources :shopping_hists, only: [:index, :create, :show]
  resources :ordered_items, only: [:create]
  resources :address_hists, only: [:create]
  resources :carts, only: [:index, :create, :destroy, :update]
  get 'cart_cmp' => 'carts#cart_cmp', as:'cart_cmp'
  get 'cart_cfm' => 'carts#cart_cfm', as:'cart_cfm'
  resources :items, only: [:index, :show]
  resources :users, only: [:show, :update, :edit]
  get 'resign' => 'users#resign', as:'resign'
  get 'resign_cmp' => 'users#resign', as:'resign_cmp'
  root to: 'users#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
