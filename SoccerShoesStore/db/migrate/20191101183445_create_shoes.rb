class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.float :price
      t.string :color
      t.string :status
      t.string :size
      t.string :brandname

      t.timestamps
    end
  end
end
