require 'rails_helper'

RSpec.describe User, type: :model do
  it "must have a name" do
  user = User.new(name:"")
  # binding.pry
  expect(user).to be_invalid
end
end
