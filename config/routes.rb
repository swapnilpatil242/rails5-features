Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
 
  # engine routes, This is the root path from where you can access engine routes
  mount Blorgh::Engine, at: "/blog"
  get 'blog/articles', 'blorgh/articles#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
