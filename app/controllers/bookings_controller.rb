class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to garde_path(@garde)
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
    params.require(:booking).permit(:status, :start_date, :end_date, :user_id, :booking_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
