require 'rails_helper'

RSpec.describe "shelter update page", type: :feature do
  before(:each)do
  @shelter_1 = Shelter.create( name:      "DFL",
                              address:   "123 west st.",
                              city:      "Denver",
                              state:      "CO",
                              zip:        "80224")
  end

  describe 'As a visitor' do
    describe 'When I visit a shelter show page' do
      it 'I can update a shelter' do

         visit "/shelters/#{@shelter_1.id}"

         expect(page).to have_content(@shelter_1.name)

         click_on 'Edit'

         expect(current_path).to eq("/shelters/#{@shelter_1.id}/edit")

         fill_in :name, with: 'Dumb Friends League'
         fill_in :address, with: '456 East st.'
         fill_in :city, with: 'Aurora'
         fill_in :state, with: 'C0'
         fill_in :zip, with: '80220'

         click_on 'Update Shelter'

         expect(current_path).to eq("/shelters/#{@shelter_1.id}")

         expect(page).to have_content('Dumb Friends League')
         expect(page).to have_content('456 East st.')
         expect(page).to have_content('Aurora')
         expect(page).to have_content('80220')

    end
   end
  end
 end
