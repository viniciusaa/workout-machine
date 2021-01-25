require 'rails_helper'

RSpec.describe Exercise, type: :model do
  describe "name" do
    it "should be valid" do
      should validate_presence_of(:name)
    end
  end

  describe "sets" do
    it "should be integer" do
      should validate_numericality_of(:sets)
    end

    it "can be present" do
      should allow_value(1).for(:sets)
    end

    it "can be blank" do
      should allow_value("", nil).for(:sets)
    end
  end

  describe "duration" do
    it "should be integer" do
      should validate_numericality_of(:duration)
    end

    it "can be present" do
      should allow_value(1).for(:duration)
    end

    it "can be blank" do
      should allow_value("", nil).for(:duration)
    end
  end

  describe "effort_level" do
    it "should be integer" do
      should validate_numericality_of(:effort_level)
    end

    it "can be present" do
      should allow_value(1).for(:effort_level)
    end

    it "can be blank" do
      should allow_value("", nil).for(:effort_level)
    end
  end
end
