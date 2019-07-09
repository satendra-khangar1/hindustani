require 'faker'
  
(1..100).each do |i|
  user = User.new(name: Faker::Name.name, aadhar: Faker::Bank.account_number, bdate: Faker::Date.birthday(18, 65))
  user.save
end

mother_array = User.where id: (1..10)
father_array = User.where id: (11..20)
children_array = User.where id: (21..100)

children_array.each do |user|
  user.update(father_id: father_array.pluck(:id).sample, mother_id: mother_array.pluck(:id).sample)
end