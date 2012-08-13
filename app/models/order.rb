class Order < ActiveRecord::Base
  attr_accessible :dish, :price, :customer_id
  belongs_to :customer
end
