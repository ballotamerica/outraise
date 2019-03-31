class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :one
      t.string :two
      t.string :city
      t.string :zipcode
      t.integer :contact_id
    end
  end
end
