class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_listing, only: %i[show edit update]
  def index
    @listings = Listing.all
    # The `geocoded` scope filters only listings with coordinates
    @markers = @listings.geocoded.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude
        # info_window_html: render_to_string(partial: "info_window", locals: {listing: listing}),
        # marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    #
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    #
  end

  def update
    if @listing.update(listing_params)
      redirect_to listing_path(@listing)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :location, :price, :description, :photo)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
