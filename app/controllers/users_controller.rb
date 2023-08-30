class UsersController < ApplicationController
  def show
    @bookings = Booking.all
    @listings = Listing.all
  end
end
