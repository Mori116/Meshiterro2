Rails.application.routes.draw do
devise_for :users
root to: 'homes#top'

resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  resource :favorites, only: [:create, :destroy]
  # idが不要な場合、単数形で記述する
  resources :post_comments, only: [:create, :destroy]
end

resources :users, only: [:show, :edit, :update]

end
