class Api::BreweryController < ApplicationController
  def index
    @brewery = Brewery.all
    render "index.json.jb"
  end

  def create
    @brewery = Brewery.new(
      name: params[:name],
      location: params[:location],
      rating: params[:rating],
      website: params[:website],
    )
    @brewery.save
    render "show.json.jb"
  end

  def show
    @brewery = Brewery.find_by(id: params[:id])
    render "show.json.jb"
  end
end
