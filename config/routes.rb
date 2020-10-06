Rails.application.routes.draw do
  root to: 'chirps#index'
  resources :chirps do
    collection do
      post :confirm
    end
  end
end
