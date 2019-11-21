require 'rails_helper'

RSpec.describe "shelter show page", type: :feature do
  it "see a specific shelter attribute" do
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

    visit "/shelters/#{shelter_1.id}"
    save_and_open_page 
    expect(page).to have_content("name = DFL")
    expect(page).to have_content("123 west st.")
    expect(page).to have_content("Denver")
    expect(page).to have_content("CO")
    expect(page).to have_content("80224")
    # expect(page).to have_content("Dumb")
  end
end


# User Story 3, Shelter Show
#
# As a visitor
# When I visit '/shelters/:id'
# Then I see the shelter with that id including the shelter's:
# - name
# - address
# - city
# - state
# - zip
