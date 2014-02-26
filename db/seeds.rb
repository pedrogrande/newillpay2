puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'shopper' },
  { :name => 'retailer' }
])
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'shopper', :email => 'shopper@example.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'retailer', :email => 'retailer@example.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user2.name
user3 = User.create! :name => 'admin', :email => 'admin@example.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user3.name
user.add_role :shopper
user2.add_role :retailer
user3.add_role :admin