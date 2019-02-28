class DashboardsController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings
  end
end
