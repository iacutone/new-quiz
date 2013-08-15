FactoryGirl.define do
  factory :question do
    name "eric"
  end

  factory :user do
    sequence(:email) { |n| "foo#{n}@example.com" }
    password "eric"
  end
end