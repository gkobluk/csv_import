FactoryGirl.define do
  factory :person do
    name Faker::Name.name
    email_address Faker::Internet.email
  end
end