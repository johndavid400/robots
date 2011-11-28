Rails.application.routes.draw do
  # Add your extension routes here
  resources :articles

  namespace :admin do
    match "image_upload" => "articles#image_upload"
    match "image_destroy" => "articles#image_destroy"

    resources :articles
  end

end
