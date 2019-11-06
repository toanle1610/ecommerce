# frozen_string_literal: true

class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.float :price
      t.string :color
      t.string :status
      t.string :category
      t.string :image

      t.timestamps
    end
  end
end
