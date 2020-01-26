Rails.application.routes.draw do
  get 'orders/new'
  get 'favourites/show'
  get 'wardrobes/show'
  get 'outfits/index'
  get 'outfits/show'
  devise_for :users
  root to: 'outfits#index'

  resources :outfits, only: [:index, :show] do
    resources :reviews, only: [:create]
    resources :favourites, only: [:create, :destroy]
    resources :wardrobe_items, only: [:create]
  end
  resources :wardrobes, only: [:show] do
    resources :wardrobe_items, only: [:edit, :update, :destroy]
    resources :orders, only: [:new]
    resources :order_items, only: [:new]
  end
  resources :favourites, only: [:show]
  resources :orders, only: [:create]
  resources :order_items, only: [:create]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
