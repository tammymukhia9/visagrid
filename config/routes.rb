Rails.application.routes.draw do

  resources :blogs
  resources :members
  resources :visit_purposes
  resources :visa_infos
  resources :countries
  resources :users
  resources :mainsearches

  root 'pages#index'
  get 'pages/index'
  get 'pages/general'
  get 'pages/contact'
  get 'pages/sign_up'
  get 'pages/USVisaInterview'
  get 'mainsearches/index'
  get 'pages/mainsearch'
  get 'pages/test'
  get 'visa_infos/listAll'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
