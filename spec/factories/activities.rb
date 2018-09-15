FactoryBot.define do
  factory :activity do
    title { Faker::Movie.quote }
    description { Faker::Movie.quote }
  end
end
