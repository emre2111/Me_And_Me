class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @user = current_user
    @booking = Booking.new
  end

  def create
    @place = Place.find(params[:place_id])
    @booking = Booking.new
    # add some kind of check if place is avaliable
    @booking.user = current_user
    @booking.place = @place
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to # dashboard
  end
end
