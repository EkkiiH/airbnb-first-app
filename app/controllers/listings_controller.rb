class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_listing, only: %i[show edit update]
  def index
    @listings = Listing.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR location ILIKE :query"
      @listings = @listings.where(sql_subquery, query: "%#{params[:query]}%")
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
    params.require(:listing).permit(:title, :location, :price, :description)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
