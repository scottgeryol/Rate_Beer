Rails.application.routes.draw do
  namespace :api do
    get "/beers" => "beer#index"
  end
end
