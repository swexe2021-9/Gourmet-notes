Rails.application.routes.draw do
    resources :user, :articles, :store
    root 'top#main'
    get 'top/main', to: 'top#main'
    post 'top/login'
    get 'top/logout'
    get 'top/menu', to: 'top#menu'
    get 'top/form', to: 'top#form'
    get 'top/search', to: 'top#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
