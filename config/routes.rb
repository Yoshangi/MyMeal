Rails.application.routes.draw do
  get 'pages/my_account'
  get 'pages/blog'
  get 'pages/faq'
  get 'pages/terms_and_policies'
  get 'pages/about_us'
  get 'pages/contact_us'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'home/index'
  root to: "home#index"
  delete "logout", to: "sessions#destory"

  resources :questionaire
end