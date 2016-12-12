require 'rails_helper'

RSpec.describe User, type: :model do
  it "email should be in a valid format" do
     user = User.new(first_name: 'raymond', last_name: 'zhong', email: 'raymond.century21', password: '123456')
     expect(user).to be_invalid
     user = User.new(first_name: 'raymond', last_name: 'zhong', email: 'raymond.century21@gmail.com', password: '123456')
     expect(user).to be_valid
  end
  it "email should be unique" do
     user = User.create(email: 'happy@yahoo.com')
    #  expect(user).to be_valid
     user2 = User.create(email: 'happy@yahoo.com')
     expect(user2).to be_invalid
  end
  it "all fields must be required (first_name, last_name, email, password)" do
     user = User.create(first_name: '')
     expect(user).to be_invalid
     user = User.create(last_name: '')
     expect(user).to be_invalid
     user = User.create(email: '')
     expect(user).to be_invalid
     user = User.create(password: '')
          expect(user).to be_invalid
     user = User.create(first_name: 'raymond', last_name: 'zhong', email: 'raymond.century21@gmail.com', password: '123456')
          expect(user).to be_valid
  end
  it "password field must be at least 6 characters long." do
     user = User.create(first_name: 'raymond', last_name: 'zhong', email: 'raymond.century21@gmail.com', password: '12345')
     expect(user).to be_invalid
     user = User.create(first_name: 'raymond', last_name: 'zhong', email: 'raymond.century21@gmail.com', password: '123456')
     expect(user).to be_valid
  end
end
