require 'rails_helper'

RSpec.describe TrailActivity, type: :model do
  it 'associations' do
    should belong_to(:activity)
    should belong_to(:trail)
  end

  it 'validations' do
    should validate_presence_of(:starts_at)
    should validate_presence_of(:ends_at)
  end
end
