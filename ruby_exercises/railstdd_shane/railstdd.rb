rails new <your_app_name> -T

#gemfile
group :development, :test do
   gem 'rspec-rails'
end

bundle install
rails generate rspec:install

rails generate model User name:string email:string
rake db:migrate


# must run rspec from root project folder
rspec spec



  it "should not save if first_name field is blank" do
  	user = User.new(name: '')
 		expect(user).to be_invalid
	end

  it "should not save if email already exists"
 	it "should contain a valid email"


class User < ActiveRecord::Base
   validates :name, :presence => true
end

