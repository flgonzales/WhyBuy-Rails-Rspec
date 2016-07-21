# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.delete_all

micha = User.create(email: "micha@mail.com",password: "password",)

alice = User.create(email:"alice@mail.com", password: "password")

Item.destroy_all

drill = Item.create(name: "Drill", description: "Very nice electric Makita drill, you can use for all the small construction tasks in and around the house", available: true, start_avail: Date.today(), user_id: micha.id)
Item.create(name: "Wheelbarrow", description: "Brand new wheelbarrow, very nice to do all your heavy lifting", available: true, start_avail: Date.today(), user_id: micha.id)
Item.create(name: "Shovel", description: "Beautifull iron shovel haven't been used yet, so if you need to dig a hole this shovel won't let you down", available: false, start_avail: Date.today(), user_id: micha.id)
Item.create(name: "Iron man suit", description: "The amazing Iron Man suit, known from the movies. Build for lightweight titanium and very user friendly", available: true, start_avail: Date.today(), user_id: micha.id)
Item.create(name: "Rope", description: "Very strong, almost brand new robe. You can use it for moving", available: false, start_avail: Date.today(), user_id: micha.id)
Item.create(name: "Red Bucket", description: "Strong handler, 30 liters of capacity", available: false, start_avail: Date.today(), user_id: alice.id)
Item.create(name: "Pruning Shears", description: "Very strong, wooden handler.", available: true, start_avail: Date.today(), user_id: micha.id)

Action.delete_all
Action.create(user_id: micha.id, item_id: drill.id, owner: alice.id)



UserDetail.delete_all

UserDetail.create(name_first: "micha", name_last: "Bright", username: "Madmicha", zipcode: "3417gp", address_st:"heeswijk", address_hno: "187", city:"Montfoort", user_id: micha.id)
