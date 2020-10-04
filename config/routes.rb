Rails.application.routes.draw do
  resources :chirps do
    collection do
      post :confirm
    end
  end
end
