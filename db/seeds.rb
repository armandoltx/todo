User.destroy_all
u1 = User.create(:username => "Armando", :email => "armando@armandoltx.com", :password => "chicken")
u2 = User.create(:username => "User1", :email => "user1@todolist.com", :password => "chicken")

List.destroy_all
l1 = List.create(:title => 'shopping', :category => 'personal')
l2 = List.create(:title => 'work', :category => 'professional')

Task.destroy_all
t1 = Task.create(:title => 'buy apples', :status => 'pending', :description => "Buy 2kg of red apples and 1kg of green apples")
t2 = Task.create(:title => 'emails', :status => 'done', :description => 'send emails to clients about new product')
