Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  
  
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'portfolios/angular', to: 'portfolios#angular', as: 'portfolios_angular'
  get 'portfolios/ruby_on_rails', to: 'portfolios#ruby_on_rails', as: 'portfolios_ruby_on_rails'
 
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  root to: 'pages#home'
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
