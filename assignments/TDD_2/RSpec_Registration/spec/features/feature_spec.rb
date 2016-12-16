require "rails_helper"
describe "Register" do
  it "prompts for the user fields" do
    visit "/"
    expect(page).to have_field('user[first_name]')
    expect(page).to have_field('user[last_name]')
    expect(page).to have_field('user[email]')
    expect(page).to have_field('user[password]')
    expect(page).to have_field('user[confirm_password]')
  end
  it "creates user and redirects to user's page" do
    visit "/"
    fill_in "user[first_name]", with: "Luke"
    fill_in "user[last_name]", with: "Skywalker"
    fill_in "user[email]", with: "sky@walker.com"
    fill_in "user[password]", with: "forceawakened"
    fill_in "user[confirm_password]", with: "forceawakened"
    click_button "Register"
    user = User.last
    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to have_text("Luke Skywalker")
  end
end
