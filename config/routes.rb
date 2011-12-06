Robots::Application.routes.draw do

  resources :projects
  resources :robots

  get "home/index"
  root :to => 'home#index'
end
