Rails.application.routes.draw do
  resources :boolean_inputs, controller: 'inputs/boolean_inputs', as: :inputs_boolean_inputs
  resources :text_inputs, controller: 'inputs/text_inputs', as: :inputs_text_inputs
  resources :inputs
  resources :forms
  resources :pages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
