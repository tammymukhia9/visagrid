Rails.application.routes.draw do

  resources :comments
  resources :blogs
  resources :members
  resources :visit_purposes
  resources :visa_infos
  resources :countries
  resources :users
  resources :mainsearches
  resources :comments

  root 'pages#index'
  get 'pages/index'
  get 'pages/general'
  get 'pages/contact'
  get 'pages/sign_up'
  get 'pages/USVisaInterview'
  get 'mainsearches/index'
  get 'pages/mainsearch'
  get 'pages/test'
  get 'reset/password'
  get 'pages/aboutus'
  get 'pages/faqTypesOfVisa'
  get 'pages/faqSchengenVisa'
  get 'pages/landing'
  get 'visa_infos/listAll'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
