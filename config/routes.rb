Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }
  resources :icos
  root to: "icos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
