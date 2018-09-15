class TrailActivity < ApplicationRecord
  belongs_to :activity
  belongs_to :trail

  validates :starts_at, presence: true
  validates :ends_at, presence: true
end
