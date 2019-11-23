require 'rails_helper'

RSpec.describe "shelters new page", type: :feature do
  it "can create shelter via form" do
  name =     "DFL"
  address =  "123 west st."
  city =     "Denver"
  state =    "CO"
  zip =      "80224"

    visit "/shelters"
    expect(page).to have_link("Create New Shelter")
    click_on "Create New Shelter"
    expect(current_path).to eq('/shelters/new')

    fill_in :name, with:    name
    fill_in :address, with: address
    fill_in :city, with:    city
    fill_in :state, with:   state
    fill_in :zip, with:     zip

    click_on "Create Shelter"

    expect(current_path).to eq('/shelters')

    expect(page).to have_content(name)

  end
end
