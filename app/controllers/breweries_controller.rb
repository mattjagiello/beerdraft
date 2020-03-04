class BreweriesController < ApplicationController

  def index
    @brewery = Brewery.new
  end

  def new
    @brewery = Brewery.new
  end

  def create
  end

  def show
    @brewery = Brewery.find(params[:id])
  end
end
