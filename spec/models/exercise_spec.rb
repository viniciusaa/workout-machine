require 'rails_helper'

RSpec.describe Exercise, type: :model do
  describe "name" do
    it "should be valid" do
      should validate_presence_of(:name)
    end
  end

  describe "amount" do
    it "should be valid" do
      should validate_presence_of(:amount)
    end
  end
end
