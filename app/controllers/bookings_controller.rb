class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.garden = Garden.find(params[:garden_id])
    @booking.user = current_user
    if @booking.save
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  def edit() end

  def update
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
