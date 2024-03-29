module AdminPermission
  def edit_users_profile
    puts 'Admin updated all users profile'
  end

  def change_password(new_password)
    @password = new_password
    puts 'Admin changed password'
  end
end

module BuyerPermission
  def buy
    puts 'Buyer has bought an item'
  end

  def change_password(new_password)
    @password = new_password
    puts 'Buyer changed password'
  end
end

class User
  attr_accessor :username, :password, :ip_address

  def initialize(username, password, ip_address)
    @username = username
    @password = password
    @ip_address = ip_address
  end

  protected

  def login
    puts "User #{@username} logged in. IP address: #{@ip_address}"
  end
end

class Admin < User
  include AdminPermission

  def admin_login
    login
  end

  def change_username=(new_username)
    @username = new_username
  end
end

class Buyer < User
  include BuyerPermission

  def buyer_login
    login
  end

  def change_username=(new_username)
    @username = new_username
  end
end

# execute

my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
my_admin.admin_login
my_admin.edit_users_profile

my_admin.change_password('new_password')

buyer = Buyer.new('juan', 'password', '127.0.0.1')
buyer.buyer_login
buyer.buy

buyer.change_password('new_password')
