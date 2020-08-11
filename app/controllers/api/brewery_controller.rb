class Api::BreweryController < ApplicationController
  def index
    @brewery = Brewery.all
    render "index.json.jb"
  end
end
