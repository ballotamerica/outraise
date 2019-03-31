class RenameContactNotesToNotes < ActiveRecord::Migration[5.2]
  def change
    rename_table :contact_notes, :notes
  end
end
