Rails.application.routes.draw do
  root "diaries#index"

  devise_for :users,
    controllers: { registrations: 'registrations' }
  resources :users
  resources :diaries
end
