class CarListingsController < ApplicationController

  def new
    @car_listing = CarListing.new
  end

  def create
    @car_listing = CarListing.new(car_listing_params)

    if @car_listing.save
      redirect_to new_car_listing_path, notice: 'Car listing successfully added.'
    else
      render 'new'
    end
  end

  private

  def car_listing_params
    params.require(:car_listing).permit(:color, :year, :mileage, :description)
  end

end
