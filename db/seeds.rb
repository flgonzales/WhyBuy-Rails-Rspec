# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.delete_all

mike = User.create(email: "mike@mail.com",password: "password",)

Item.destroy_all

Item.create(name: "Drill", description: "Very nice electric Makita drill, you can use for all the small construction tasks in and around the house", available: true, start_avail: Date.today(), user_id: mike.id)


UserDetail.delete_all

UserDetail.create(name_first: "Mike", name_last: "Anderson", username: "Madmike", zipcode: "3417gp", address_st:"heeswijk", address_hno: "187", city:"Montfoort", user_id: mike.id)
