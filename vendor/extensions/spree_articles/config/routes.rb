Rails.application.routes.draw do
  # Add your extension routes here
  resources :articles

  namespace :admin do
    resources :articles
  end

end
