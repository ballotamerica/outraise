class CreateContactNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_notes do |t|
      t.text :noteBody
      t.integer :contact_id
    end
  end
end
