require 'rails_helper'

RSpec.describe Activity, type: :model do
  it 'associations' do
    should have_many(:trail_activities)
  end

  it 'validations' do
    should validate_presence_of(:description)
    should validate_presence_of(:title)
  end
end
