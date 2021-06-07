require "faker"
Faker::Config.locale = :ja

1000.times do
  User.create!(name: Faker::Name.name, age: rand(0..100))
end

puts "初期データの投入に成功しました！"