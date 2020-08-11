Rails.application.routes.draw do
  namespace :api do
    get "/beers" => "beer#index"
    post "/beers" => "beers#create"
  end
end
