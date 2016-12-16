rake db:migrate:status

rails new [project_name]
cd test_project
rails s
rails g model User email:string
rails g model Post content:string  reference: User

rails g model Product name:string description:string pricing:float
rails g model Category name:string reference: Product
rails g controller products index show new edit create update destroy

rails g model User first_name:string last_name:string email:string password:string confirm_password:string
rake db:migrate

rails g model Mathdojo

user1 = User.new

gem 'hirb'
gem 'rails-footnotes', '~> 4.0'
gem 'pry'
simple_form//////

bundle install

rails generate rails_footnotes:install
rails s

rails c
Hirb.enable

rails g controller Users index new

rails g controller users index new
rails g controller Times main
rails g controller Forms index result
rails g controller Words index generate
rails g controller Numbers index submit reset
rails g controller rpgs index farm cave casino house reset
rails g controller Users index
rails g model User name:string

rake db:migrate

routes.rb-> resources :products
rake routes

User.create(name:"u1")

Category.create(name:"Electronics")
Category.create(name:"Household")
Category.create(name:"Gardening")
Category.create(name:"Automotive")
Category.create(name:"Ninjas")
User.create(first_name:"Jon", last_name:"Stark", email:"jon@thewall.com", password:123456)
User.create(first_name:"Jon2", last_name:"Stark2", email:"jon2@thewall.com", password:123456)
User.create(first_name:"Jon2", last_name:"Stark2", email:"jon3@thewall.com", password:123456)

rails g scaffold User first_name:string last_name:string email:string password:string

User.all
User.first
User.last
user1 = User.find(2)
User.update(3, first_name: "Greg", last_name: "Smith")
User.last.updated(age:18)

Product.first.update(category_id:1)

arya3.errors.full_messages

reload!

Migrations
Purpose
Rails Migration allows you to use Ruby to define changes to your database schema, making it possible to use a version control system to keep things synchronized with the actual code. If multiple developers are working on the code base, or you have multiple machines with copies of the code base, using migrations will enable you to keep all of the code synchronized with each update. Additionally, it is easier to update the production database without requiring you to manually access the database and make changes to it.
rails g migration [name of the migration] (e.g. rails g migration addNewColumnToBooks)

rails g migration addNewColumnToProducts
rails g migration addNewColumnToEvents

F List of Migration Methods:
create_table :table_name, (options)
drop_table :table_name
change_table :table_name, (options)
rename_table :table_name, :new_name
add_column :table_name, :column_name, :column_type, (options)
rename_column :table_name, :column_name, :new_column_name
change_column :table_name, column_name, :column_type,(options)
remove_column :table_name, :column_name, :column_type, (options)
add_index :table_name, :column_names, (options): Adds a new index with the name of the column. Other options include :name, :unique (e.g. { name: 'users_name_index', unique: true }) and :order (e.g. { order: { name: :desc } }).
remove_index :table_name, column: :column_name Removes the index specified by column_name.
remove_index :table_name, name: :index_name Removes the index specified by index_name.

Different data types
string - for small data types (less than 256 characters)
text - for longer text (more than 256 characters)
integer - for whole numbers
float - for decimals
datetime and timestamp - store the date and time into a column
date and time - store either the date only or time only (not used very often)
binary - for storing data such as images, audio, or movies (not used very often)
boolean - for storing true or false values
Rake
rake routes
rake db:migrate
rake db:rollback - rollback the change; do this if you made a mistake
rake db:rollback STEP=3 - rollback the last 3 changes made in the migrations.

routes.rb-> resources :products
rake routes

Description	URL	Controller/Method  	HTTP Verb
A page that displays all the products.	/products/	products#index	GET
A page that displays information for the product with an id of 2	/products/2	products#show	GET
A page that allows the user to add a new product	/products/new	products#new	GET
A page that allows the user to edit existing product information	/products/2/edit	products#edit	GET
A URL that processes the information submitted by the new method; in other words to create a new product.	/products/	products#create	POST
A URL that processes the information submitted by the edit method; in other words to update a particular product's information.	/products/2	products#update	PATCH/PUT
A URL that allows a product to be deleted	/products/2	products#destroy	DELETE


rails g controller NAMES index new
def main
  render "home" #renders the home.html.erb view in the views/users folder
end
def main
    if signed_in?
      redirect_to "/users/show" #we can route with /controller/method,
 #but note that this is considered a bad practice in Rails.
 #We will learn how to route in Rails in the 'helpers' section
    else
      redirect_to new_users_path #this is the proper way to route in Rails
    end
  end

  def index
    @products = Product.all
  end
  def create
    @product = Product.create( name: params[:name], description: params[:description])
    redirect_to '/products/index'
  end

  <form action='/products/' method='post'>
    <input name="authenticity_token" value="<%= form_authenticity_token %>" type="hidden">
    <input type='text' name='name' />
    <textarea name='description'></textarea>
    <input type='submit' value='Create' />
  </form>

  config/environments/development.rb

  def index
    @products = Product.all
    render json: @products
  end
  def create
    @product = Product.create( name: params[:name], description: params[:description])
    puts @product
    render text: 'created a new product'
  end



  config.log_level = :warn



<input type="hidden"

  gem 'rails-footnotes', '~> 4.0'

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'hirb'

  gem 'pry'
end
bundle install

rails generate rspec:install

rspec spec
