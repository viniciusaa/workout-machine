require 'rails_helper'

RSpec.describe Workout, type: :model do
  it { should have_and_belong_to_many(:exercises) }
end
