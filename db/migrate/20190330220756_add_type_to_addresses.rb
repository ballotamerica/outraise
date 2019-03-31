class AddTypeToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :mailboxType, :string
  end
end
