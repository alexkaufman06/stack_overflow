Rails.application.routes.draw do
  root to: 'questions#index'

  resources :sessions
  resources :users do
    resources :questions
  end
  resources :questions do
    resources :responses, except: [:show, :index]
    resources :votes, only: [:create]
  end
end
