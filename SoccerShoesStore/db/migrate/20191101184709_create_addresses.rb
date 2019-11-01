class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :postalcode
      t.integer :province_id
      t.integer :country_id

      t.timestamps
    end
  end
end
