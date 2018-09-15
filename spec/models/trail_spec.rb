require 'rails_helper'

RSpec.describe Trail, type: :model do
  it 'associations' do
    should have_many(:trail_activities)
    should have_many(:user_trails)
  end

  it 'validations' do
    should validate_presence_of(:description)
    should validate_presence_of(:duration)
  end
end
