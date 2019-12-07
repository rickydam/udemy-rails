require_relative 'udemy52-57'

#$LOAD_PATH << "."
#require 'udemy52-54'

users = [
    {username: "ricky1", password: "password1"},
    {username: "ricky2", password: "password2"},
    {username: "ricky3", password: "password3"}
]

include Crud
hashed_users = Crud.create_secure_users(users)
puts hashed_users
