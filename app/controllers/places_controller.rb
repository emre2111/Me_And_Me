class PlacesController < ApplicationController
  def index
    @places = if params[:continent]
      Place.where[:continent]
    else
      Place.all
    end
  end

  def show
    @place = Place.find(params[:id])
  end
end
