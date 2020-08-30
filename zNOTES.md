


NOTE Original code for file

    <h2><%= @post.title %></h2>
<p>
  Content: <%= @post.content %>
</p>
Comments:
  <% @post.comments.each do |comment| %>
    <%= link_to comment.user.username, user_path(comment.user) %> said
    <%= comment.content %>
  <% end %>
_______________________________________

SEED DATA
NOTE Remove either the prefix name or the user_id number from & change comments to Comment

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

c1 = bea.comments.create(content: "Physical Feets is a play on the words, Physical Feats", user_id: 2, post_id: 1)
c2 = cc.comments.create(content: "Physical Feets is stupid!", user_id: 3, post_id: 1)
c3 = abe.comments.create(content: "Beats bore me", user_id: 1, post_id: 2)
c4 = abe.comments.create(content: "America is the center of the universe!", user_id: 1, post_id: 3)
c5 = cc.comments.create(content: "Change for a dollar and change of pace are kinds of changes.", user_id: 3, post_id: 4)




