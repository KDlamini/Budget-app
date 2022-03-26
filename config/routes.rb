Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root 'homes#index'
    resources :users, only:  [:index]
    resources :groups  do
      resources :records,  only:  [:index, :new, :create, :show, :destroy]
    end
  end
end
