require_relative 'udemy52-57'

class Student
  include Crud

  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email address: #{@email}"
  end
end

student1 = Student.new("Ricky", "Dam", "rickydam", "ricky@email.com", "rickypassword")
student2 = Student.new("John", "Doe", "johndoe", "john@email.com", "johnpassword")
puts student1
puts student2

hashed_password = student1.create_hash_digest(student1.password)
puts hashed_password
