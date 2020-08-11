Rails.application.routes.draw do
  namespace :api do
    get "/beers" => "beer#index"
    post "/beers" => "beer#create"
    get "/beers/:id" => "beer#show"
    patch "/beers/:id" => "beer#update"
    delete "/beers/:id" => "beer#destroy"
  end
end
