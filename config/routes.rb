Rails.application.routes.draw do


  resources :authors, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  patch '/authors/:id', to: 'posts#update'

  resources :books, only: [:index, :show]

  resources :book_authors, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
