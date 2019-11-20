require 'rails_helper'

describe "shelters index page", type: :feature do
  it "can see the names of each shelter in the system" do
    shelter_1 = Shelter.create( name:      "DFL",
                                address:   "123 west st.",
                                city:      "Denver",
                                state:      "CO",
                                zip:        "80224")

    shelter_2 = Shelter.create( name:      "Dumb",
                                address:   "124 west st.",
                                city:      "Auroa",
                                state:      "CO",
                                zip:        "80220")

    visit "/shelters"
    expect(page).to have_content("DFL")
    expect(page).to have_content("Dumb")
  end
end

# As a visitor
# When I visit '/shelters'
# Then I see the name of each shelter in the system
