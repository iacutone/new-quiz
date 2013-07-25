# FactoryGirl.define do
#   factory :user do
#     name     "Eric"
#     email    "eric@example.com"
#     password "password"
#     password_confirmation "password"
#   end
# end

Factory.define :user do |f|
	f.sequence(:email) { |n| "foo#{n}example.com" }
	f.password 'password'
end