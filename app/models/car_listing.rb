class CarListing < ActiveRecord::Base

  validates :color, presence: true
  validates :year, presence: true,
    numericality: { only_integer: true, greater_than_or_equal_to: 1980 }
  validates :mileage, presence: true,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end
