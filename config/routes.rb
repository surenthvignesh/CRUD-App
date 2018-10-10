Rails.application.routes.draw do


  root "pages#home"
  get '/about', to: 'pages#about'
  get '/menu', to: 'pages#menu'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tools
end
