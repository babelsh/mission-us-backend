FactoryBot.define do
  factory :trail do
    description { Faker::Movie.quote }
    duration { Faker::Number.between(1, 10) }
  end
end
