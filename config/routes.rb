Rails.application.routes.draw do
  resources :tasks
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  root to: 'tasks#index'

  get 'tasks/:id/completed', to: 'tasks#completed', as: 'completed'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
