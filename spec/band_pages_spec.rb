require("spec_helper")

describe("adding a band", {:type => :feature}) do
  it("allows the user to add a band to the database") do
    visit("/")
    click_link("Bands")
    fill_in("name", :with => "Coheed and Cambria")
    click_button("Add Band")
    expect(page).to have_content("Coheed and Cambria")
  end
end
