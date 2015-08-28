require("spec_helper")

describe("adding a band", {:type => :feature}) do
  it("allows the user to add a band to the database") do
    visit("/")
    click_link("Bands")
    fill_in("band_name", :with => "Coheed and Cambria")
    click_button("Add Band")
    expect(page).to have_content("Coheed and Cambria")
  end
end

describe("updating a band", {:type => :feature}) do
  it("allows the user to update a band's name") do
    test_band = Band.create({:name => "Coheed and Cambria"})
    visit("/bands/#{test_band.id()}")
    fill_in("update_band_name", :with => "The Prize Fighter Inferno")
    click_button("Update Name")
    expect(page).to have_content("The Prize Fighter Inferno")
  end
end
