Rails.application.routes.draw do

  root to: 'users#index'

  resources :users, only: [:index, :show]
  resources :teamcolors, only: [:index, :show]
  resources :cards, only: [:index, :show]

  resources :search, only: [:index] do
    collection do
      get 'results'
    end
  end

  #get 'pages/about', to: 'pages#about'
  get 'about', to: 'pages#about', as: 'about'
  # get 'teamcolor', to: 'teamcolors#index', as: 'teamcolor'
  # get 'card', to: 'cards#index', as: 'card'


  # get 'users/index'
  # get 'users' => 'users#index'
 

  # get 'users/show'
  # get 'users/:id', to: 'users#show', id: /\d+/


  # get 'teamcolors/index'
  # get 'teamcolors/show'
  # get 'cards/index'
  # get 'cards/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
