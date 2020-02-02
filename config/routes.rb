Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' }
  root "diaries#index"
  resources :users
  resources :diaries
end
