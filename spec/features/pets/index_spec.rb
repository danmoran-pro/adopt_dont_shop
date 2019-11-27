require 'rails_helper'

RSpec.describe "pets index page", type: :feature do
  it "can see the names of each pet in system" do
           @itachi = Pet.create(image: "https://www.google.com/maps/uv?hl=en&pb=!1s0x876b73d11e035fdf%3A0x85767fc12015e59e!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipM_wcTsT-uIQQYfgCsIenKcDK9fUwOmLM8X3bTN%3Dw260-h175-n-k-no!5srottweiler%20colorado%20-%20Google%20Search!15sCAQ&imagekey=!1e10!2sAF1QipMfbLp_F4gvSIKg-6j9T-3lv5NVGFiurswJ6FCO#", name: 'Itachi', age: 5, sex: 'male', location: 'DFL')

    visit "/pets"
      expect(page).to have_content("Itachi")
    end
  end

# As a visitor
# When I visit '/pets'
# Then I see each Pet in the system including the Pet's:
# - image
# - name
# - approximate age
# - sex
# - name of the shelter where the pet is currently located
