Robots::Application.routes.draw do
  get "projects/index"

  get "projects/show"

  get "projects/new"

  get "projects/edit"

  resources :robots
  get "home/index"
  root :to => 'home#index'
end
