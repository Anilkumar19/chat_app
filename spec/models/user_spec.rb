require 'rails_helper'

describe User do
  it 'has a valid factory' do
    expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
  end

  # it 'is invalid without a year' do
  #   expect(build(:vehicle, year: nil)).to_not be_valid
  # end
end