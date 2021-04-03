Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  get    '/logoin/show', to: 'sessions#show'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  post '/school_choise_update', to: 'home#school_update'

  get 'replies/:question_id/new', to: 'replies#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sessions
  resources :home
  resources :study_records
  resources :questions
  resources :replies
end
