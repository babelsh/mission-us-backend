require 'rails_helper'

RSpec.describe UserTrail, type: :model do
  it 'associations' do
    should belong_to(:trail)
    should belong_to(:user)
  end
end
