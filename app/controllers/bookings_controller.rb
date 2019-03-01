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
      flash[:alert] = "please try again"
      redirect_to place_path(@place)
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    flash[:notice] = "your booking has been cancelled"
    redirect_to dashboard_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
