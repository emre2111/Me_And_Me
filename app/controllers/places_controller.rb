class PlacesController < ApplicationController
  def index
    # @places = Place.find(params[place_params])
    if params[:continent].present?
      @places = Place.where(continent: params[:continent], level_of_remoteness: params[:level_of_remoteness])
      @places
    else
      @places = Place.all
    end
  end

  def show
    @place = Place.find(params[:id])
    @booking = Booking.new
    @booking.place = @place
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.create(place_params)
    if @place.save
      redirect_to places_path
    else
      render :new
    end
  end

  private

  def place_params
    params.require(:place).permit(:name, :continent, :level_of_remoteness, :photo)
  end
end

# http://localhost:3000/places?utf8=%E2%9C%93&continent=Africa&level_of_remoteness=extremely+remote&commit=Search
