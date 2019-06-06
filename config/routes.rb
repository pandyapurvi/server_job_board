Rails.application.routes.draw do
  resources :jobs
  resources :applications
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: :create do
    collection do
      post 'confirm'
      post 'login'
    end
  end
end
