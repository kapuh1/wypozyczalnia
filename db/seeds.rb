# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Owner.first 
  Owner.create!(name: 'oskar', email: 'oskar@kapuh.dev', password: '12qwaszx', password_confirmation: '12qwaszx')
end
