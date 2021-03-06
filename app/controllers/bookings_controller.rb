class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  # skip_before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

  def show
    set_booking
    @garden = @booking.garden
  end

  # def new
  #   @garden = Garden.find(params[:garden_id])
  #   @booking = Booking.new
  #   authorize @booking
  # end

  def create
    @booking = Booking.new(booking_params)
    @garden = Garden.find(params[:garden_id])
    authorize @booking
    @booking.garden = @garden
    @booking.user = current_user
    if @booking.save
      redirect_to @booking
    else
      render "gardens/show"
    end
  end

  def edit() end

  def update
    # record.garden.user == user
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
