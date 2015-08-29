require("spec_helper")

describe(Band) do
  it { should have_and_belong_to_many(:venues) }
  it { should validate_presence_of(:name) }

  it('converts the name to title case') do
    test_band = Band.create({:name => "COHEED AND CAMBRIA"})
    expect(test_band.name).to eq('Coheed And Cambria')
  end
end
