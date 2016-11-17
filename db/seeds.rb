require 'faker'

Employee.delete_all
Book.delete_all
Publisher.delete_all
User.delete_all

maaz = User.create! username: "maaz", password: "12345678"


10.times do
  i = Publisher.create! pub_name: "#{Faker::Book.publisher}"
  Book.create! title: "#{Faker::Book.title}", isbn:"#{Faker::Code.isbn}", author:"#{Faker::Book.author}", year: 2000, availibility: 5, pub_id: i.id

end
