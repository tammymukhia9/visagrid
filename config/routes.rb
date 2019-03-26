Rails.application.routes.draw do

  resources :visit_purposes
  resources :visa_infos
  resources :members
  resources :countries
  resources :users
  root 'pages#index'
  get 'pages/index'
  get 'pages/general'
  get 'pages/contact'
  get 'pages/mainsearch'
  get 'pages/sign_up'
  get 'pages/blogs/USVisaInterview'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
