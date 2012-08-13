class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :dish
      t.integer :price
      t.integer :customer_id
      t.timestamps
    end
  end
end
