Robots::Application.routes.draw do
  resources :robots
  get "home/index"
  root :to => 'home#index'
end
