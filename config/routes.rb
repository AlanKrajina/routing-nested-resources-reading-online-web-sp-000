Rails.application.routes.draw do
<<<<<<< HEAD

  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'authors/:id/posts'
    get 'authors/:id/posts/:post_id'

  resources :authors, only: [:show]
>>>>>>> b92b8c5865a6c263e1a96d5d6bd9d4a71d16ea50

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
end
