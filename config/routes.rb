Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "todo/create", to: "todos#create"
  get "todo/show", to: "todos#show"
  post "tasks", to: "todos#save"
end
