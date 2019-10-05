Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: "/graphql", graphql_path: "/graphql" if Rails.env.development? 
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
