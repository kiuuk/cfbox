# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users_data = [
  { 
    userid: 'FN', 
    password: 'semper', 
    name: 'Christopher Ray', 
    affiliate_id: '',
    phone: '(621)-608-8503',
    picture: 'https://randomuser.me/api/portraits/thumb/men/65.jpg',
    gender: 'male',
    age: 23,
  }
]

affiliate_data = [
  { 
    affiliateid: 'CF', 
    password: 'cfadmin', 
    name: 'Crossfit', 
    address: 'add',
    phone: '(621)-608-8503',
    picture: 'https://randomuser.me/api/portraits/thumb/men/65.jpg',
    website: 'www',
    sns: '',
  }
]

users_data.each do |data|
  User.create!(data)
end

affiliate_data.each do |data|
  Affiliate.create!(data)
end