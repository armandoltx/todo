User.destroy_all
u1 = User.create(:username => "Armando", :email => "armando@armandoltx.com", :password => "chicken")
u2 = User.create(:username => "Peter", :email => "peter@todo.com", :password => "chicken")
u3 = User.create(:username => "Maria", :email => "maria@todo.com", :password => "chicken")

List.destroy_all
l1 = List.create(:title => 'shopping', :category => 'personal')
l2 = List.create(:title => 'work', :category => 'professional')
l3 = List.create(:title => 'today', :category => 'personal')

Task.destroy_all
t1 = Task.create(:title => 'buy apples', :status => 'pending', :description => "Buy 2kg of red apples and 1kg of green apples")
t2 = Task.create(:title => 'emails', :status => 'complete', :description => 'send emails to clients about new product')
t3 = Task.create(:title => 'call mum', :status => 'pending', :description => 'call mum, today is hers birthday.')

# Adding lists to users
u1.lists << l1
u2.lists << l2
u3.lists << l3

# Adding tasks to lists
l1.tasks << t1
l2.tasks << t2
l3.tasks << t3
