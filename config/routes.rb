Robots::Application.routes.draw do
  mount Forem::Engine, :at => "/forums"

  get "home/index"
  root :to => 'home#index'

  resources :projects
  resources :robots

  match "project_image_upload" => "projects#image_upload"
  match "project_image_destroy" => "projects#image_destroy"

end
