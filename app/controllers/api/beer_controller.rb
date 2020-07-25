class Api::BeerController < ApplicationController
  def index
    @beers = Beer.all
    render "index.json.jb"
  end
end
