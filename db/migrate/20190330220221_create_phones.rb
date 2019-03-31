class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :numberType
      t.string :numberDigits
      t.integer :contact_id
    end
  end
end
