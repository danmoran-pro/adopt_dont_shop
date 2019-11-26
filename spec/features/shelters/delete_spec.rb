require 'rails_helper'

RSpec.describe "shelter delete page", type: :feature do
  before(:each) do
    @shelter_1 = Shelter.create( name:      "DFL",
                                 address:   "123 west st.",
                                 city:      "Denver",
                                 state:     "CO",
                                 zip:       "80224")

  @shelter_2 = Shelter.create( name:      "Dumb Friends League",
                               address:   "456 east st.",
                               city:      "Aurora",
                               state:     "CO",
                               zip:       "80220")
  end

  describe "As a visitor" do
    describe 'When I visit a shelter show page' do
      it "can delete a shelter" do

        visit "/shelters/#{@shelter_1.id}"

        click_link 'Delete Shelter'

        expect(current_path).to eq("/shelters")

        expect(page).to have_content('Dumb Friends League')
        expect(page).to_not have_content('DFL')
   end
  end
 end
end
