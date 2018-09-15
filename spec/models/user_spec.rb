require 'rails_helper'

RSpec.describe User, type: :model do
  it 'associations' do
    should have_many(:user_trails)
  end

  it 'validations' do
    should validate_presence_of(:name)
    should validate_presence_of(:email)
    should validate_presence_of(:password)
  end
end
