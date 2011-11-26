Robots::Application.routes.draw do
  get "robots/index"

  get "robots/show"

  get "robots/new"

  get "robots/create"

  get "robots/edit"

  get "robots/update"

  get "robots/destroy"

  get "home/index"
  root :to => 'home#index'
end
