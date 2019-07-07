require 'faker'
  
(1..100).each do |i|
  user = User.new(name: Faker::Name.name, aadhar: Faker::Bank.account_number, bdate: Faker::Date.birthday(18, 65))
  user.save
end