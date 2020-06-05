Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/bedrijven'
  get 'pages/investeerders'
  get 'pages/over_CFOhulp'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
