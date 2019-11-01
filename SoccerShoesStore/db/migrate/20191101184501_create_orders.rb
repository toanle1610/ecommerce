# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :address_id
      t.integer :user_id
      t.datetime :date
      t.float :order_pst
      t.float :order_gst
      t.float :order_subtotal

      t.timestamps
    end
  end
end
