# frozen_string_literal: true

class CreateShoeOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :shoe_orders do |t|
      t.integer :order_id
      t.integer :shoe_id
      t.integer :quantity
      t.float :sizenum

      t.timestamps
    end
  end
end
