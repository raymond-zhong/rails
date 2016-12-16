Add the Label field instead of name...

password
~Bcrypt

u1 = User.new(name: "Shane", password: "123", password_confirmation: "123")
password isEncrypted
-unsaved


validates :name, :password, presence: true
validates :password, on:create

u1.save (name, password_digest)
u1.valid?
-saved

u1=User.first
-saved coming from DB
u1.valid? = false

u1.name="Shane2"

u1.authenticate('password')

rails new demoSecrets --database=postgresql -T

rake db:create


-Login:

SessionsController:
define create
end
define destroy
end

session[:user_id] = 5

check if user is logged in before accessing specific paths...

Login goes to that route.... Sessions
if session exits


users->secrets

user_id has many likes, secrets have many likes
likes (many to many)
user_id and secret_id

Secrets Controller

def create
end

def new (not needed)
end

Users Controller
show password_digest
def show... show secrets

current_user to find out using sessions, not put in secrets or users controller...
Users Controller <ApplicationController....
def current_user in application Controller... not in views or models, if need to grab user object,...
@current_user = current_user, then avaliable in the views... do if checks....

development database
migrate1-> down/up
migration2-> down/up

test database
make sure do migrate for test database...
rake db:migrate RAILS_ENV = test....(CONFIRM)!!!!

visit 'users/new' go visit it...

<input name =""
