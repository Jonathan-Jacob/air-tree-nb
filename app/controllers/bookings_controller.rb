class BookingsController < ApplicationController
  before_action :set_treehouse, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.treehouse = @treehouse
    if booking.save
      redirect_to # ?????
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_treehouse
    @treehouse = Treehouse.find(params[:treehouse_id])
  end
end
