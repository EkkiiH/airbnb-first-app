class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
<<<<<<< HEAD
    @listings = Listing.all
=======
>>>>>>> f8ec47ad8d18ff4a7e3f6d81cb1c4e41ec9a31d7
  end

  # def show
  #   @listing = Listing.find(params[:id])
  # end
end
