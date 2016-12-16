rails new Events2 --database=postgresql --skip-test-unit

gem 'bcrypt',
<!-- '~> 3.1.7' -->

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'hirb'
  gem 'rails-footnotes'
  <!-- , '~> 4.0' -->
  gem 'pry'
end

bundle install

rails generate rspec:install

rails generate rails_footnotes:install

rake db:create

rails g model User first_name:string last_name:string email:string location:string location_state:string password:digest
rails g model Event user:references name:string date:date location:string location_state:string
rails g model Comment user:references content:string event:references
rails g model Guest user:references event:references

rails g controller users index show new edit create update destroy
rails g controller events index new create destroy
rails g controller comments index show new create update destroy
rails g controller sessions new create destroy

rake db:migrate

rails g migration addNewColumnToEvents

class AddNewColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :name, :string
  end
end

rake db:migrate


rails g migration renameColumnContToComments

class renameColumnToComments < ActiveRecord::Migration
  def change
    rename_column :comments, :location, :content
  end
end

rake db:migrate

rails g migration removeColumnToComments

class renameColumnToComments < ActiveRecord::Migration
  def change
    remove_column :comments, :location_state, :string
  end
end

rake db:migrate
