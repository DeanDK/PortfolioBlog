Rails.application.routes.draw do
  resources :portofolioos, except: [:show]
  get 'portofolioo/:id', to: 'portofolioos#show', as: 'portofolioo_show'
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do 
    member do
      get :toggle_status
    end
  end
  
  root to: 'pages#home'
end
