require 'addressable/uri'
require 'open-uri'
require 'json'
require 'rest_client'
require 'rubygems'

HOST = "localhost:3000"

def create_new_customer(first_name, last_name, table_number)
  RestClient.post(Addressable::URI.new({
    :scheme => "http",
    :host => HOST,
    :path => "/customers.json"
  }).to_s, {
    :customer => {
      :first_name => first_name,
      :last_name => last_name,
      :table_number => table_number
    }
  })
end

def update_customer(id, first_name, last_name, table_number)
  RestClient.put(Addressable::URI.new({
    :scheme => "http",
    :host => HOST,
    :path => "/customers/#{id}.json"
  }).to_s, {
    :customer => {
      :first_name => first_name,
      :last_name => last_name,
      :table_number => table_number
    }
  })
end

def get_customers
  RestClient.get "http://localhost:3000/customers.json"
end

def show_customer(id)
  RestClient.get  "http://localhost:3000/customers/#{id}.json"
end

def destroy_list(id)
  RestClient.delete "http://localhost:3000/customers/#{id}.json"
end

def create_new_order(dish, price, customer_id)
    RestClient.post(Addressable::URI.new({
      :scheme => "http",
      :host => HOST,
      :path => "/orders.json"
    }).to_s, {
      :order => {
        :dish => dish,
        :price => price,
        :customer_id => customer_id
      }
    })
end
  

def update_order(id, dish, price, customer_id)
  RestClient.put(Addressable::URI.new({
    :scheme => "http",
    :host => HOST,
    :path => "/orders/#{id}.json"
  }).to_s, {
    :order => {
      :dish => dish,
      :price => price,
      :customer_id => customer_id
    }
  })
end

def get_orders
  RestClient.get "http://localhost:3000/orders.json"
end

def show_order(id)
  RestClient.get  "http://localhost:3000/orders/#{id}.json"
end

def destroy_order(id)
  RestClient.delete "http://localhost:3000/orders/#{id}.json"
end
