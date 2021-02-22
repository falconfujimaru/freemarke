Rails.application.routes.draw do
  # get 'fremars/index'
  # get 'fremars/show'
  # get 'fremars/new'
  # get 'fremars/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'fremars#index'
  resources :fremars
end
