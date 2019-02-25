class BookingsController < ApplicationController

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
      redirect_to #confirm page
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
