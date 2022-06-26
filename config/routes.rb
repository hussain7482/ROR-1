Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
namespace :api do
resources :user
end
get "typeahead/api/:query",to:"api/user#search"
  # Defines the root path route ("/")
  # root "articles#index"
end
