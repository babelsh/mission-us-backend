class Activity < ApplicationRecord
  has_many :trail_activities, dependent: :destroy

  validates :description, presence: true
  validates :title, presence: true
end
