require 'rails_helper'

RSpec.describe "when visitor views index page" do
  it "shows visitors user's names and email addresses" do
    adam = User.create!({name: "Adam", email: "akkranich@gmail.com"})
    brie = User.create!({name: "Brie", email: "brie.schmid@gmail.com"})
    shelby = User.create!({name: "Shelby", email: "sgrantges@gmail.com"})

    visit users_path

    expect(page).to have_content("Adam")
    expect(page).to have_content("Brie")
    expect(page).to have_content("akkranich@gmail.com")
    expect(page).to have_content("sgrantges@gmail.com")
    expect(page).to have_content("Shelby")
  end

  it "" do
  end
end

# And click on 'Register as User'
# I am taken to a new user form
# When I fill out that form and click 'Create User'
# I am redirected back to user index
# And see the new user
