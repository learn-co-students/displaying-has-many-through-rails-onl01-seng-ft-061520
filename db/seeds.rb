# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all



abe = User.create(username: "Abraham", email: "abe@email.com")
bea = User.create(username: "Beatrice", email: "bea@email.com")
cc = User.create(username: "Celia", email: "cc@email.com")

p1 = abe.posts.create(title: "Physical Feets", content: "I have the strongest feet in the world. I don't kick rocks, I kick boulders!")
p2 = bea.posts.create(title: "Beats", content: "Beating on the bongos bring me great joy.")
p3 = cc.posts.create(title: "America", content: "Is like the Roman Empire, just not as old.")
p4 = bea.posts.create(title: "Change", content: "The one inevitability is change.")

c1 = Comment.create(content: "Physical Feets is a play on the words, Physical Feats", user_id: 2, post_id: 1)
c2 = Comment.create(content: "Physical Feets is stupid!", user_id: 3, post_id: 1)
c3 = Comment.create(content: "Beats bore me", user_id: 1, post_id: 2)
c4 = Comment.create(content: "America is the center of the universe!", user_id: 1, post_id: 3)
c5 = Comment.create(content: "Change for a dollar and change of pace are kinds of changes.", user_id: 3, post_id: 4)






