require "rails_helper"

RSpec.describe Mechanic, type: :model do
  describe 'relationships' do
  end

  describe 'class methods' do
    it "should average years of exp" do
      @mechanic = Mechanic.create!(name: "Kara Smith", years_experience: 11)
      @mechanic_2 = Mechanic.create!(name: "Shawn Lee", years_experience: 1)
    expect(@mechanic.average_exp).to eq(6)
    end
  end
end
