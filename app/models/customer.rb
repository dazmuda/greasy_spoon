class Customer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :table_number
  has_many :orders
end
