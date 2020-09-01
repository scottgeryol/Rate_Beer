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
      rating: params[:rating],
    )
    @beer.save
    render "show.json.jb"
  end

  def show
    @beer = Beer.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @beer = Beer.find_by(id: params[:id])
    @beer.name = params[:name] || @beer.name
    @beer.brewery = params[:brewery] || @beer.brewery
    @beer.style = params[:style] || @beer.style
    @beer.abv = params[:abv] || @beer.abv
    @beer.save
    render "show.json.jb"
  end

  def destroy
    @beer = Beer.find_by(id: params[:id])
    @beer.destroy
    render json: { message: "Beer was successfully destroyed" }
  end
end
