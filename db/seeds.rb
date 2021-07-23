# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
    User.create!(
        email: "user#{i.to_s}@exam.com",
        password: 'aaaaaa',
        password_confirmation: 'aaaaaa',
        name: "user#{i.to_s}"
    )
end


10.times do |i|
    DailyRanking.create!(
        user_id: i+1
    )
end

