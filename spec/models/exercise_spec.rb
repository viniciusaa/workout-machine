require 'rails_helper'

RSpec.describe Exercise, type: :model do
  describe "name" do
    it { should validate_presence_of(:name) }
  end

  describe "sets" do
    it { should validate_numericality_of(:sets) }
    it { should allow_value(1).for(:sets) }
    it { should allow_value("", nil).for(:sets) }
  end

  describe "duration" do
    it { should validate_numericality_of(:duration) }
    it { should allow_value(1).for(:duration) }
    it { should allow_value("", nil).for(:duration) }
  end

  describe "effort_level" do
    it { should validate_numericality_of(:effort_level) }
    it { should allow_value(1).for(:effort_level) }
    it { should allow_value("", nil).for(:effort_level) }
  end

  it { should have_and_belong_to_many(:workouts) }
end
