Robots::Application.routes.draw do
  resource :robots
  get "home/index"
  root :to => 'home#index'
end
