class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :formName
      t.text :formBody
      t.string :formTitle
      t.decimal :amountOne
      t.decimal :amountTwo
      t.decimal :amountThree
      t.decimal :amountFour
      t.decimal :amountFive
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
