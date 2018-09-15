class Trail < ApplicationRecord
  has_many :trail_activities, dependent: :destroy
  has_many :user_trails, dependent: :destroy

  validates :description, presence: true
  validates :duration, presence: true
end
