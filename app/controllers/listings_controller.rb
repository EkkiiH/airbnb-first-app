class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show new create edit update]
  before_action :set_listing, only: %i[show edit update]
  def index
    @listings = Listing.all
  end

  def show
    #
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    # raise
    if @listing.save!
      redirect_to listing_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    #
  end

  def update
    @listing.update
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :location, :price, :description)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
