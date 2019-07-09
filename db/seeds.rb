require 'faker'
  
(1..100).each do |i|
  user = User.new(name: Faker::Name.name, aadhar: Faker::Bank.account_number, bdate: Faker::Date.birthday(18, 65))
  user.save
  father = Father.create(name: Faker::Name.name, user_id: user.id)
  mother = Mother.create(name: Faker::Name.name, user_id: user.id)
  child = Child.create(name: Faker::Name.name, user_id: user.id, sex: ['male', 'female'].sample)
end