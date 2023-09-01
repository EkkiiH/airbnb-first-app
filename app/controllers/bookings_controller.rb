class BookingsController < ApplicationController
  before_action :set_listing, only: %i[show new create]

  def show
    @booking = Booking.find(params[:id])
    # @markers = @booking.geocoded.map {
    #   lat: @booking.listing.latitude,
    #   lng: @booking.listing.longitude
    #   info_window_html: render_to_string(partial: "info_window", locals: {booking: @booking})}
    @markers = [{ lat: @booking.listing.latitude, lng: @booking.listing.longitude}]
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.listing = @listing
    @booking.user = current_user
    if @booking.save
      redirect_to listing_booking_path(@listing, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :confirmation)
  end
end
