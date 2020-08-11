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

  def update
    @brewery = Brewery.find_by(id: params[:id])
    @brewery.name = params[:name] || @brewery.name
    @brewery.location = params[:location] || @brewery.location
    @brewery.rating = params[:rating] || @brewery.rating
    @brewery.website = params[:website] || @brewery.website
    @brewery.save
    render "show.json.jb"
  end

  def destroy
    @brewery = Brewery.find_by(id: params[:id])
    @brewery.destroy
    render json: { message: "Brewery was successfully destroyed!" }
  end
end
