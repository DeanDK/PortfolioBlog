Rails.application.routes.draw do
  resources :portofolioos, except: [:show]
  get 'portofolioo/:id', to: 'portofolioos#show', as: 'portofolioo_show'
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
  
  root to: 'pages#home'
end
