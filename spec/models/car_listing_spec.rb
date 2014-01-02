require 'spec_helper'

describe CarListing do

  it { should validate_presence_of :color }
  it { should validate_presence_of :year }
  it { should validate_presence_of :mileage }

  it { should have_valid(:year).when(1989, 2013) }
  it { should_not have_valid(:year).when(1979, 2000.5) }

  it { should have_valid(:mileage).when(150000, 23475) }
  it { should_not have_valid(:mileage).when('150K', '150,000', -2000) }

end
