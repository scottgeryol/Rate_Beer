Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"

    get "/beers" => "beer#index"
    post "/beers" => "beer#create"
    get "/beers/:id" => "beer#show"
    patch "/beers/:id" => "beer#update"
    delete "/beers/:id" => "beer#destroy"

    get "/brewery" => "brewery#index"
    post "/brewery" => "brewery#create"
    get "/brewery/:id" => "brewery#show"
    patch "/brewery/:id" => "brewery#update"
    delete "/brewery/:id" => "brewery#destroy"
  end
end
