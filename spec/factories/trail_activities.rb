FactoryBot.define do
  factory :trail_activity do
    starts_at { Time.zone.now }
    ends_at { Time.zone.now }
    trail
    activity
  end
end
