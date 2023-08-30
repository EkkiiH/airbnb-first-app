class BookingsController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.listing = @listing
    if @booking.save
      redirect_to listing_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).review(:start_date, :end_date, :confirmation)
  end
end
