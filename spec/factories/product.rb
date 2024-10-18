FactoryBot.define do
  factory :product do
    title { Faker::ChuckNorris.fact }
  end
end
