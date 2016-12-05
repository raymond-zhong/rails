# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1=User.create(first_name:"fname1", last_name:"lname1", email_address:"email1@email.com")
u2=User.create(first_name:"fname2", last_name:"lname2", email_address:"email2@email.com")
u3=User.create(first_name:"fname3", last_name:"lname3", email_address:"email3@email.com")
u4=User.create(first_name:"fname4", last_name:"lname4", email_address:"email4@email.com")
u5=User.create(first_name:"fname5", last_name:"lname5", email_address:"email5@email.com")

b1=Blog.create(name:"Blog1", description:"Blog1Description")
b2=Blog.create(name:"Blog2", description:"Blog2Description")
b3=Blog.create(name:"Blog3", description:"Blog3Description")
b4=Blog.create(name:"Blog4", description:"Blog4Description")
b5=Blog.create(name:"Blog5", description:"Blog5Description")

o1=Owner.create(user:u1, blog:b1)
o2=Owner.create(user:u1, blog:b2)
o3=Owner.create(user:u1, blog:b3)
