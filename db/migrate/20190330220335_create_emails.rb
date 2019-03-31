class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :addressType
      t.string :address
      t.integer :contact_id
    end
  end
end
