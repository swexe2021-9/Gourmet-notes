Rails.application.routes.draw do
    resources :user, :article, :store
    root 'top#main'
    get 'top/main', to: 'top#main'
    post 'top/login'
    get 'top/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
