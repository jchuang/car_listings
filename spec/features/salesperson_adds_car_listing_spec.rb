require 'spec_helper'

feature 'add car listing', %q{
  As a car salesperson
  I want to record a newly acquired car
  So that I can list it in my lot
} do

# Acceptance Criteria:
# I must specify the color, year, mileage of the car.
# Only years from 1980 and above can be specified.
# I can optionally specify a description of the car.
# If I enter all of the required information in the required format, the car is recorded.
# If I do not specify all of the required information in the required formats, the car is not recorded and I am presented with errors.
# Upon successfully creating a car, I am redirected so that I can create another car.

  scenario 'create a valid car listing' do
    visit 'car_listings/new'

    fill_in 'Color', with: 'blue'
    fill_in 'Year', with: '1989'
    fill_in 'Mileage', with: '150000'
    fill_in 'Description', with: 'single owner, in good condition'
    click_button 'Create'

    expect(page).to have_content('Car listing successfully added')
    expect(page).to have_content('Create a Car Listing')
  end

  scenario 'missing or incorrectly formatted information' do
    visit 'car_listings/new'

    fill_in 'Year', with: '1979'
    fill_in 'Mileage', with: '150K'
    click_button 'Create'

    expect(page).to have_content('Please fill out the color.')
    expect(page).to have_content('Sorry, we can only accept cars from 1980 or later.')
    expect(page).to have_content('Please enter mileage as a number, with no commas.')
  end
end
