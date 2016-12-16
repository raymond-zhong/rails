1) I am building a new rails app that supports all the basic CRUD operations, what is the first thing I should do? Give me an overview of what I am going to do, including the commands I should run to build this rails app, and in what order. What do I build first? then what?

rails new [project_name]
cd test_project

rails g model User email:string
rails g controller products index show new edit create update destroy
rails g controller users index show new edit create update destroy
rake db:migrate

open gem file
group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'hirb'
  gem 'rails-footnotes', '~> 4.0'
  gem 'pry'
end
bundle install

rails generate rails_footnotes:install
rails generate rspec:install
rails s

rails c
Hirb.enable

rspec spec

missing controller

2) You are given this rails app (see zipped folder). I want to add an email attribute to the Users class, what should I do?, walk me through the steps/commands you would run and why.

rails g migration addNewColumnToUsers
add_column :users, :email, :string
rake db:migrate
look at status

3) What are the 7 restful routes, lets say I want to build the 7 routes for a Product class, what would the routes look like (write them as they ought to appear in your routes.rb)

rails g controller products index show new edit create update destroy
rails g controller sessions new users create destroy

get '/products/'=> 'products#index'
post '/products/'=> 'products#create'
get '/products/new'=> 'products#new'
get '/products/:id/edit'=> 'products#edit'
patst '/products/:id'=> 'products#update'
get '/products/:id'=> 'products#show'
delete '/products/:id'=> 'products#destroy'

4) I want a form that I can submit to edit user data, what are all the components (sections of code) that I need to build? What does my form look like? What do the other components look like? What is the flow (ie when I hit the submit button the form, what is the next component that comes into play? and whats the one after that?)

FORM HTML

<form action="/users/<%= @user.id %>" method="post">
  <input name="authenticity_token" value="<%= form_authenticity_token %>" type="hidden">
    <input name="_method" value="patch" type="hidden">_
  <label>First Name </label></br>
  <input type="text" name="user[first_name]" value="<%= @user.first_name %>"/></br>
  <label>Last Name </label></br>
  <input type="text" name="user[last_name]" value="<%= @user.last_name %>"/></br>
  <label>Email </label></br>
  <input type="text" name="user[email]" value="<%= @user.email %>"/></br>
  <label>Password </label></br>
  <input type="password" name="user[password]" value="<%= @user.password %>"/></br>
  <input type="submit" value="update"/>
</form>
<a href="/users/<%= @user.id %>/">Show</a> | <a href="/users/">Back</a>

Controller
****DISPLAYS CURRENT USER INFORMATION****
def edit
  @user = User.find(params[:id])
  # binding.pry
end
****SUBMIT BUTTON HIT****
def update
  # binding.pry
  @user = User.find(params[:id])
  if @user.update_attributes(user_params)
    redirect_to controller: 'users', action:'show', id:params[:id]
  else
    flash[:errors] = @user.errors.full_messages
    redirect_to "/users/#{@user.id}/edit"
  end
end
****AFTER SUBMIT VERIFIES INFO BEFORE SUBMITTING****
private
def user_params
params.require(:user).permit(:first_name, :last_name, :email, :password)
end

5) How do i use sessions? What does the code look like for using a session in rails? What is a session and what might I use it for? How does a session compare to an instance variable, when would you use one or the other? What is flash?
-use session to store the current user's ID but not the user object itself

class UsersController < ApplicationController
  def create
    #adds the value in params[:id] to the :id key in session
    session[:id] = params[:id] #we will talk about params in a bit
  end
  def log_out
    #sets the session[:id] to nil, overwriting the previous value
    session[:id] = nil
  end
end
-Flash is similar to session in that it can store values in between HTTP requests, but with one large exception:  it is only available for one request/response cycle.

6) Draw me the ERD (Entity Relationship Diagram - the tables and their one-to-one, one-to-many relationships) to represent users and their favorite books. You can assume that a given user will have multiple favorite books (i.e. User “Shane” has "Ender’s Game" as one of his favorite books and also has “LOTR” as one of his favorite books. User “Oscar” also has “LOTR” as one of his favorite books.) Write the active record associations (has_one, has_many etc) for the classes that correspond to each of the tables.

users<-many-favorite_list-many>books

class User < ActiveRecord::Base
    has_many :favorite_lists
end

class Favorite_List < ActiveRecord::Base

  belongs_to :user
  belongs_to :books

end

class Book < ActiveRecord::Base
  has_many :favorite_lists
end

7) (skip this one if you dont know how to do the other ERD question) Draw me the ERD for users creating posts, and users liking posts. Users can create multiple posts and users can like multiple posts (both their own posts and posts other users create).
Again write the active record associations (has_one, has_many etc) for the classes that correspond to each of the tables.

class User < ActiveRecord::Base
    has_many :likes
    has_many :posts
    has_many :likes_post, through: posts, source: like
    has_many :posts_like, through: likes, source: post
end

class Post < ActiveRecord::Base
  belongs_to :user
  has_many :likes  
end

class Like < ActiveRecord::Base
  belongs_to :post
  has_many :users
end
