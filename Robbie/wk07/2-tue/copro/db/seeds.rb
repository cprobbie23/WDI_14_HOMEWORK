# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.delete_all
User.delete_all


arr1 = ['mistyrose', 'fairy', 'cake', 'candy']
arr2 = ['pudding', 'muffin', 'floss', 'crush']

user = User.new
user.email = 'dt@ga.co'
user.password = 'pudding'
user.save

10.times do
  Project.create(
    title: "#{arr1.sample}#{arr2.sample}",
    user_id: user.id
  )
end
