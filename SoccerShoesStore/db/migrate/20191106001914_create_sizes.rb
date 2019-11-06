class CreateSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :sizes do |t|
      t.integer :shoe_id
      t.float :sizenum

      t.timestamps
    end
  end
end
