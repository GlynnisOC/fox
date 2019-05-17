require 'rails_helper'

RSpec.describe "user creation" do
  it "allows user to register on site" do
    visit new_user_path

  fill_in 'Name', with: "Adam"
  fill_in 'Email', with: "akkranich@gmail.com"
  click_on ("Create User")

  expect(current_path).to eq(users_path)

  adam = User.find_by({email: "akkranich@gmail.com"})
  adam.save

  expect(page).to have_content("Adam")
  expect(page).to have_content("akkranich@gmail.com")
  end
end
