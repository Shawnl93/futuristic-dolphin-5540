require 'rails_helper'

RSpec.describe 'the mechanic index page' do
  before :each do
    @six_flags = AmusementPark.create!(name: 'Six Flags', admission_cost: 75)
    @universal = AmusementPark.create!(name: 'Universal Studios', admission_cost: 80)

    @hurler = @six_flags.rides.create!(name: 'The Hurler', thrill_rating: 7, open: true)
    @scrambler = @six_flags.rides.create!(name: 'The Scrambler', thrill_rating: 4, open: true)
    @ferris = @six_flags.rides.create!(name: 'Ferris Wheel', thrill_rating: 7, open: false)

    @jaws = @universal.rides.create!(name: 'Jaws', thrill_rating: 5, open: true)

    @mechanic = Mechanic.create!(name: "Kara Smith", years_experience: 11)
    @mechanic_2 = Mechanic.create!(name: "Shawn Lee", years_experience: 1)
  end
  it 'displays a header saying "All Mechanics" ' do
    visit "/mechanics"
    expect(page).to have_content("All Mechanics")
  end

  it "list all mechanics name and years of experience" do
    visit "/mechanics"
    expect(page).to have_content(@mechanic.name)
    expect(page).to have_content(@mechanic.years_experience)
  end


end
