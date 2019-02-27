class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @user = current_user
    @booking = Booking.new
  end

  def create
    @place = Place.find(params[:booking][:place_id])
    @booking = Booking.new(booking_params)
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
    flash[:notice] = "your booking has been cancelled"
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
