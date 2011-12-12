Robots::Application.routes.draw do
  mount Forem::Engine, :at => "/forums"

  resources :projects
  resources :robots

  get "home/index"
  root :to => 'home#index'
end
