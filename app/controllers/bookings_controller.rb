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
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:booking][:status]
    @treehouse = @booking.treehouse
    @booking.save
    authorize @booking
    redirect_to mytreehouse_path(@treehouse)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guests)
  end

  def set_treehouse
    @treehouse = Treehouse.find(params[:treehouse_id])
  end
end
