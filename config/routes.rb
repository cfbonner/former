Rails.application.routes.draw do
  namespace :inputs do
    resources :boolean_inputs
    resources :text_inputs
  end
  resources :forms
  resources :pages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
