class PlacesController < ApplicationController
  def index
    # @places = Place.find(params[place_params])
    @places = Place.where(continent: params[:continent], level_of_remoteness: params[:level_of_remoteness])
    @places
  end

  def show
    @place = Place.find(params[:id])
    @booking = Booking.new
    @booking.place = @place
  end
end

# http://localhost:3000/places?utf8=%E2%9C%93&continent=Africa&level_of_remoteness=extremely+remote&commit=Search
