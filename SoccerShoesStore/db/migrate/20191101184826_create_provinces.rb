class CreateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :provinces do |t|
      t.string :shortname
      t.float :pst

      t.timestamps
    end
  end
end
