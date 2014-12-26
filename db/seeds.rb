# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless User.exists? email: 'iampbt@gmail.com'
  user_params = {
    email: 'iampbt@gmail.com',
    password: 'password',
    first_name: 'Tyler',
    last_name: 'Hughes'
  }
  user = User.new user_params
  user.add_role :admin
  user.save
end