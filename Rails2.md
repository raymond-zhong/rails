rails new seeks --database=postgresql --skip-test-unit

gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'hirb'
  gem 'rails-footnotes', '~> 4.0'
  gem 'pry'
end
bundle install

rails generate rspec:install

rails generate rails_footnotes:install

rspec spec

rails g model User first_name:string last_name:string email:string location:string location_state:string password:digest

rails g model Event user_id:name:string date:date location:string location_state:string

rails g controller sessions new create destroy
rails g controller users index show new edit create update destroy


rake db:create

<input name="authenticity_token" value="<%= form_authenticity_token %>" type="hidden">
  <input name="_method" value="patch" type="hidden">_

  validates :name, presence: true, on: :create
  validates :password, presence: true, on: :create


rails g model Secret content:text user:references
rake db:migrate

rails g model Like user:references secret:references
rake db:migrate

class User < ActiveRecord::Base
  has_secure_password
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, presence: true, on: :create
  validates :password, presence: true, on: :create
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end

class Secret < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
end

class Secret < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
end

rails g controller secrets index new edit create update destroy

<% @secrets.each do |secret| %>
<%=secret.content%>
<% end %>

rails g controller likes index new edit create update destroy

user = User.find_by_email(params[:email])

rails new Belt_Reviewer

rails g scaffold User first_name:string last_name:string email:string location:string password:digest
rails g scaffold Event name:string date:date location:string host:string action:string

rake db:migrate
