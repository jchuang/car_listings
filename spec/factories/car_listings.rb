# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car_listing do
    color "MyString"
    year 1
    mileage 1
    description "MyString"
  end
end
