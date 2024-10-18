FactoryBot.define do
  factory :user do
    name { Faker::ChuckNorris.fact }
  end
end
