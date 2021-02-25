class BookingsController < ApplicationController
  before_action :set_treehouse, only: [:new, :create]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.treehouse = @treehouse
    if @booking.save
      redirect_to bookings_path
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guests)
  end

  def set_treehouse
    @treehouse = Treehouse.find(params[:treehouse_id])
  end
end
