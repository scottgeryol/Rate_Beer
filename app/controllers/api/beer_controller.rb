class Api::BeerController < ApplicationController
  def index
    @beers = Beer.all
    render "index.json.jb"
  end

  def create
    @beer = Beer.new(
      name: params[:name],
      brewery: params[:brewery],
      style: params[:style],
      abv: params[:abv],
      # rating: params[:rating],
    )
    @beer.save
    render "show.json.jb"
  end

  def show
    @beer = Beer.find_by(id: params[:id])
    render "show.json.jb"
  end
end
