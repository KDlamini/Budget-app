Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root 'homes#index'
    resources :users, only:  [:index]
    resources :groups  do
      resources :group_records, only:  [:create, :destroy]
    end
    resources :records,  only:  [:new, :create]
  end
end
