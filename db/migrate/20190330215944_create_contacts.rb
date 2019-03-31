class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :firstName
      t.string :lastName
      t.string :suffix
      t.integer :user_id
    end
  end
end
