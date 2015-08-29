require("spec_helper")

describe(Venue) do
  it { should have_and_belong_to_many(:bands) }
  it { should validate_presence_of(:name) }

  it('converts the name to title case') do
    test_venue = Venue.create({:name => "CRYSTAL BALLROOM"})
    expect(test_venue.name).to eq('Crystal Ballroom')
  end
end
