Rails.application.routes.draw do
  root "users#index"

  devise_for :users,
    controllers: { registrations: 'registrations' }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users
  resources :diaries
end
