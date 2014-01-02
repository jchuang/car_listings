class CarListingsController < ApplicationController

  def new
    @car_listing = CarListing.new
  end

end
