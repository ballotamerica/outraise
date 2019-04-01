class AddFormIdToContributions < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :form_id, :integer
  end
end
