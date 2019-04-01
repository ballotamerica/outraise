class CreateContributions < ActiveRecord::Migration[5.2]
  def change
    create_table :contributions do |t|
      t.decimal :amount
      t.string :recurring
      t.string :token
      t.integer :contact_id
    end
  end
end
